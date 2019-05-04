#!/bin/sh
# Prerequisites
apk add build-base g++ libstdc++ libressl
cd /app

# Install stuff
gem install bundler
bundle install --deployment --without development --jobs=4
bundle clean --force

# Clean up
apk -U --purge del build-base g++
rm -rf ./setup.sh /var/cache/apk/* /root/.bundle /root/.gem
