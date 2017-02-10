require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsSkeleton
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    #Typescript
    TypeScript::Src.use_external_tsc = true
    Typescript::Rails::Compiler.default_options = %w(--target es5 --lib es7,dom --moduleResolution node --sourceMap true --emitDecoratorMetadata true --experimentalDecorators true --noImplicitAny true --suppressImplicitAnyIndexErrors true)
    config.app_generators.javascript_engine :typescript
    config.assets.enabled = true
  end
end
