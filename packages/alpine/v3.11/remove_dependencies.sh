#!/usr/bin/env bash

# Remove all links
find . ! -name "*.sh" -mindepth 1 -maxdepth 1 -exec rm -rf {} \;
