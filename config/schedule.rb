# frozen_string_literal: true

# set :output, "/path/to/my/cron_log.log"

every 2.hours, roles: [:sidekiq] do
  runner 'FlickrPhotosImporter.refresh'
  runner 'MrssPhotosImporter.refresh'
end
