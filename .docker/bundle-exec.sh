#!/bin/sh

# Check if Gemfile exists
if [ -f "Gemfile.lock" ]; then
  # Run arguments with `bundle exec` command
  bundle install && bundle exec "$@"
else
  # Run arguments without `bundle exec` command
  "$@"
fi
