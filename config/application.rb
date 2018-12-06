require_relative 'boot'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Jntjambi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    #seting local bahasa dan format tanggal dan nomor
    config.i18n.available_locales = :id
    config.i18n.default_locale = :id
    config.time_zone = 'Jakarta'
    config.active_record.default_timezone = :local

    config.action_mailer.delivery_method = :smtp
    ActionMailer::Base.smtp_settings = {
    address: "smtp.gmail.com",
    enable_starttls_auto: true,
    port: 587,
    authentication: :plain,
    user_name: ENV["MAIL_USERNAME"],
    password: ENV["MAIL_PASSWORD"],
    openssl_verify_mode: 'none'
    }
  end
end