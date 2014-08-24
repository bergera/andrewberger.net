require "haml"
require "susy"
require "breakpoint"

page "/index.html"

set :haml, {format: :html5}

set :css_dir, 'stylesheets'

set :images_dir, 'images'

configure :development do
  activate :livereload
end

configure :build do
  activate :minify_css
  activate :relative_assets
end
