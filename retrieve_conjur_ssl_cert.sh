#!/bin/bash
set -eo pipefail

. utils.sh

master_pod_name=$(get_master_pod_name)
echo "$(kubectl exec -c conjur-oss-nginx $master_pod_name -- cat /opt/conjur/etc/ssl/cert/tls.crt)"
