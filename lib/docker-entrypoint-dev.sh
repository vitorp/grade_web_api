#!/bin/sh
# https://stackoverflow.com/a/38732187/1935918
set -e

if [ -f /app/tmp/pids/server.pid ]; then
  rm /app/tmp/pids/server.pid
fi

bundle exec rake db:migrate 2>/dev/null || bundle exec rake db:setup

exec bundle exec rails s -p 3000 -b 0.0.0.0
