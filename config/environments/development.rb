Rails.application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local = true

  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.assets.quiet = true

  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_caching = false
  config.action_mailer.perform_deliveries = true
  config.action_mailer.default_options = {from: 'no-reply@bexbolton.com'}
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }


  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
end
