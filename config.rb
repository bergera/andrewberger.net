require "sass-globbing"
require "haml"
require "breakpoint"

page "/index.html"

set :haml, {format: :html5}
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# inline CSS and JS
activate :inliner

configure :development do
  activate :livereload
end

configure :build do
  compass_config do |config|
    config.output_style = :compressed
  end

  activate :asset_hash
  activate :minify_css
  activate :minify_html
  activate :relative_assets
  activate :gzip
end

activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.remote = "deploy"
  deploy.branch = "master"
end
