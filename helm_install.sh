#!/bin/bash

export CONJUR_ACCOUNT=default
export CONJUR_NAMESPACE=conjur-oss
export CONJUR_ADMIN_PASSWORD="$(./retrieve_admin_password.sh)"
export CONJUR_SSL_CERT="$(./retrieve_conjur_ssl_cert.sh)"

helm install \
    --set conjur.conjurAccount="$CONJUR_ACCOUNT" \
    --set conjur.namespace="$CONJUR_NAMESPACE" \
    conjur-admin-app \
    .
