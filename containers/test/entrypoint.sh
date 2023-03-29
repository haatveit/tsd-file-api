#!/bin/bash

/usr/local/bin/poetry install
exec /usr/local/bin/tsd-file-api
