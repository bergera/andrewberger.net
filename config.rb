require "sass-globbing"
require "haml"
require "breakpoint"

page "/index.html"

set :haml, {format: :html5}
set :css_dir, 'styles'
set :js_dir, 'scripts'
set :images_dir, 'images'

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
