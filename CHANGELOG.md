# Changelog

All notable changes to this project will be documented in this file.

## [unreleased]

### ⚙️ Miscellaneous Tasks

* *(docs)* Update CHANGELOG
* *(changelog)* Update changelog on release workflow run

## [2.17.1] - 2024-07-01

### 🚧 Build

* *(deps)* Bump urllib3 from 1.26.18 to 1.26.19

### ⚙️ Miscellaneous Tasks

* *(docs)* Add automatic generation of CHANGELOG

## [2.17.0] - 2024-06-19

### 🚧 Build

* *(deps)* Bump tornado from 6.3.3 to 6.4.1

## [2.16.2] - 2024-05-29

### 🚧 Build

* *(deps)* Bump rexml from 3.2.6 to 3.2.8 in /containers/rpm

## [2.16.0] - 2024-04-24

### 🐛 Bug Fixes

* *(build)* Lock fpm and its dependencies

### 🚜 Refactor

* Fix issues highlighted by ruff linting

### 🎨 Styling

* Format with black
* *(generic-chowner)* Ruff formatter 2024.2 style

### 🚧 Build

* *(deps)* Bump cryptography from 41.0.6 to 42.0.0
* *(deps)* Bump cryptography from 42.0.0 to 42.0.2
* *(deps)* Bump cryptography from 42.0.2 to 42.0.4
* *(deps)* Bump jwcrypto from 1.5.1 to 1.5.6
* *(deps)* Upgrade typing-extensions 4.5 -> 4.10
* *(deps)* Remove black from dev deps
* *(deps)* Bump idna from 3.4 to 3.7

### ⚙️ Miscellaneous Tasks

* *(audit)* Adjust conditional to not skip scheduled jobs
* Use actions/checkout@v4 in workflows
* *(pre-commit)* Run autoupdate
* *(pre-commit)* Remove reorder-python-imports due to incompat with black
* *(pre-commit)* Add ruff hook
* *(pre-commit)* Remove black hook
* *(pre-commit)* Update pyupgrade to 3.15.1
* *(pre-commit)* Update ruff to 0.3.3
* *(tests)* Check if container is running while waiting
* *(tests)* Log backend output on test failure

## [2.15.4] - 2024-01-05

### 🚧 Build

* *(deps)* Bump sqlalchemy from 1.4.47 to 1.4.49
* *(deps)* Bump pysquril from 0.3.6 to 0.4.1
* *(deps)* Switch psycopg2 to source dist
* *(containers)* Add libpq headers for psycopg2
* *(deps)* Bump urllib3 from 1.26.17 to 1.26.18
* *(deps)* Bump cryptography from 41.0.4 to 41.0.6

### ⚙️ Miscellaneous Tasks

* *(tests)* Run on Python 3.12
* Use Poetry 1.3.2 to avoid intermittent failure
* Bump poetry-dynamic-versioning to v1.1.0
* Limit pull_request triggers to forks

## [2.15.2] - 2023-09-18

### 🐛 Bug Fixes

* Less inclusive regex for audit log viewer
* *(api)* Less inclusive /files/health endpoint routing
* *(api)* Less inclusive test token endpoint routing

## [2.15.1] - 2023-08-08

### 🐛 Bug Fixes

* Missing ServerSnsError import in api module
* *(api)* Set survey endpoints to "survey"

### 🚧 Build

* Upgrade pygments from 2.14.0 to 2.15.1
* Upgrade PyYAML from 6.0 to 6.0.1
* Upgrade certifi from 2022.12.7 to 2023.7.22
* Update cryptography from 41.0.2 to 41.0.3
* *(rhel7)* Switch from rh-ruby23 to rh-ruby30
* *(rhel7)* Pin the fpm version
* *(rhel7)* Add --rpm-dist param to fpm
* *(rhel7)* Use RPM name for artifact name
* *(rhel)* Pin fpm version and disable doc build
* *(rhel)* Use RPM name for artifact name

### ⚙️ Miscellaneous Tasks

* Lower audit frequency to once daily
* Update audit Poetry version to 1.5.1
* Update Poetry/pdv in container workflow
* Set fail-fast to false in container workflow

## [2.15.0] - 2023-06-29

### ⚙️ Miscellaneous Tasks

* Remove Python 3.7 from tests
* Switch pyupgrade target to >=3.8

## [2.13.1] - 2023-04-19

### 🐛 Bug Fixes

* Log warning on already finalised upload

## [2.13.0] - 2023-04-03

### 🚧 Build

* Set 'raw' container tag priority

### GenericTableHandler

* Implement GET stream encryption

### README

* Correct issues introduced in #142
* Add test and audit status badges

### Api

* Move decrypt_nacl_headers() to AuthRequestHandler

## [2.12.9] - 2023-02-20

### README

* Update dev environment setup instruction

### Api

* Fix relative import in set_config()

### Pyproject.toml

* Specify absolute versions for jwcrypto and pysquril

## [2.12.8] - 2023-02-14

### 🧪 Testing

* Backoff on mtime comp

### Api

* Move additional_log_details to AuthRequestHandler

### Requirements

* Upgrade pysquril to version 0.2.2

## [2.12.7] - 2023-01-20

### FileRequestHandler

* Add requestor to error logging

### Enforce_export_policy

* Log requestor on symlink

## [2.12.5] - 2023-01-13

### Any_path_islink

* Add allowed symlinks list

### Api

* Use os.lstat() instead of os.stat()

## [2.12.4] - 2023-01-12

### List_files

* Abort early if any part of dir is a symlink

## [2.12.3] - 2023-01-12

### Api

* Disallow symlinks in enforce_export_policy()

## [2.12.2] - 2023-01-06

### LICENSE

* Update year

### Tsd-file-api

* Extend dockerfiles for development and ready-to-use image (fix #10)
* More work on dockerfiles

## [1.9.8] - 2020-04-14

### ResumablesHandler

* Remove hardcoded backend from import_dir in init

### TDRIFT-1332

* Read sns config from one file - maintain mappings in one place

### TDRIFT-1333

* Return 400 when trying to upload to sns key dir that does not exist
* Return 400 when trying to upload to sns key dir that does not exist - with tests

### TDRIFT-1334

* Add uuid to partial file name - so we can crash mid-request without preventing a subsequent retry

### TDRIFT-840

* Fix exception was never retrieved bug, update tests

### TDRIFT-858

* Support PGP for generic json data submissions
* Add integration test for PGP handling with generic tables

### TDRIFT-859

* Add option to enable user based authnz, return user info from auth validation
* Draft implementation of optional user authorization for form-data file uploads
* Draft implementation of optional user authorization for streaming uploads
* Finish outline of optional user based authorization

### TDRIFT-954

* JWT validation updated for new proj, user claims

### TDRIFT-971

* Simplify role structure for authorization

### Api

* Fix cluster special case on finish/close.

### Utils

* Set sns_dir permissions bits

<!-- generated by git-cliff -->
