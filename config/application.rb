require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BookLibrary
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.i18n.default_locale = :ja
    # changes needs to restart rails server.


    # rails generate controller コマンドで, デフォルトでは helper と assets を生成させないようにする。
    # コマンドにおける --no-helper --no-assets オプションと同じ効果。
    config.generators do |g|
      g.assets  false
      g.helper  false
    end


    # デフォルトのテンプレートエンジンをslimに変更。これでrails g した際にはデフォルトでslimになります。
    # config.generators.template_engine = :slim  
  end
end
