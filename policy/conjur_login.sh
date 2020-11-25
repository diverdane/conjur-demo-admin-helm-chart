#!/usr/bin/env bash

set -eo pipefail

conjur authn login -u admin -p $CONJUR_ADMIN_PASSWORD
