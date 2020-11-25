#!/usr/bin/env bash

set -eo pipefail

conjur_url="https://conjur-oss.$CONJUR_NAMESPACE.svc.cluster.local"
yes yes | conjur init -a $CONJUR_ACCOUNT -u $conjur_url
