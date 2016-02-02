#!/bin/bash

# Exit on error
set -e

if [ -z "$VERSION" ]; then
    echo "Need to set VERSION"
    exit 1
fi

# Create the DEB package
fpm -s dir -t deb -n "mcollective-plugins" -v ${VERSION} -p /dist /opt/puppetlabs/mcollective/*
fpm -s dir -t rpm -n "mcollective-plugins" -v ${VERSION} -p /dist /opt/puppetlabs/mcollective/*

exit 0
