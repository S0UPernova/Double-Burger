require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Double
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1
    config.relative_url_root = ENV["RAILS_RELATIVE_URL_ROOT"]
    config.action_controller.relative_url_root = ENV["RAILS_RELATIVE_URL_ROOT"]
    config.assets.prefix = ENV["RAILS_RELATIVE_URL_ROOT"]

    # master_key = ENV['RAILS_MASTER_KEY']

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
