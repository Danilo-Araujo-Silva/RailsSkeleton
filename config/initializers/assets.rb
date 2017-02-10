require 'pathname'

# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( rails/* )
javascript_body_views_path = "app/assets/javascripts/body/views"
Rails.application.config.assets.paths << javascript_body_views_path
Dir.glob(
  Rails.root.join(javascript_body_views_path, "**/*.ts")
) {
  |file|
    if File.file?(file)
      Rails.application.config.assets.precompile +=
        ["#{File.dirname(file).sub(/.*views\//, '')}/#{File.basename(file, '.ts')}.js"]
    end
}