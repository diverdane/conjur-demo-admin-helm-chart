get_pods() {
  kubectl get pods --selector "$1" --no-headers | awk '{ print $1 }'
}

get_master_pod_name() {
  pod_list=$(get_pods "app=conjur-oss")
  echo $pod_list | awk '{print $1}'
}

