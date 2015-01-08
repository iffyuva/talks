require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    config.middleware.use(StackProf::Middleware,
                          enabled: true,
                          mode: :cpu,
                          interval: 1000,
                          save_every: 1)
  end
end
