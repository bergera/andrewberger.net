# andrewberger.net
My simple one-page personal site using [Middleman](https://middlemanapp.com/).

## Dependencies
- Ruby
- Bundler

### Windows
Middleman must be run on a 32-bit installation of Ruby when using Windows, due to bugs with the eventmachine gem.

## Deploy
```
$ ./deploy.sh
```

## Building
```
$ bundle install
$ bundle exec middleman build
```

## Hosting
Hosted on Ubuntu 14.10 with an Upstart service as follows:

```
description "andrewberger.net Nginx container"
author "andrew@andrewberger.net"
start on filesystem and started docker
stop on runlevel [!2345]
respawn
script
  /usr/bin/docker start -a website-nginx
end script
```

Run `./deploy.sh` to rebuild the project and Docker container.
