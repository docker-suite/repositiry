#!/usr/bin/env bash

# Remove all links
find . -name "*" -type l -exec rm -rf {} \;
