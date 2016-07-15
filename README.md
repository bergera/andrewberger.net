# andrewberger.net
My simple one-page personal site using Middleman. Build using .

## Dependencies
- Ruby
- Bundler

### Windows
Middleman must be run on a 32-bit installation of Ruby when using Windows, due to bugs with the eventmachine gem.

## Building
```
$ bundle install
$ bundle exec middleman build
```

## Docker
```
$ docker build -t website-nginx .
$ docker run --name website-nginx -d -p 80:80 website-nginx
```
