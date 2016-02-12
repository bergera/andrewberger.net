# require "middleman/deploy"
require "sass-globbing"
require "haml"
require "breakpoint"

page "/index.html"

set :haml, {format: :html5}

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

configure :development do
  activate :livereload
end

configure :build do
  activate :minify_css
  activate :relative_assets
end

activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.remote = "deploy"
  deploy.branch = "master"
end
