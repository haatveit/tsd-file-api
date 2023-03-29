#!/bin/bash

CONFIG_FILE="$1"

/usr/local/bin/poetry install
exec /usr/local/bin/tsd-file-api "$CONFIG_FILE"
