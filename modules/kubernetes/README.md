# `Kubernetes` Aliases and Utilities

Enhances `Kubernetes` command line integration by providing aliases,
functions and by exposing repository status information to prompts.

## Aliases

- `kb` is an alias for `kubectl`
- `kba` is an alias for `ubectl apply`
- `kbc` is an alias for `kubectl create`
- `kbD` is an alias for `kubectl delete`
- `kbd` is an alias for `kubectl describe`
- `kbe` is an alias for `kubectl exec`
- `kbf` is an alias for `kubectl port-forward`
- `kbg` is an alias for `kubectl get`
- `kbl` is an alias for `kubectl logs`
- `kblf` is an alias for `kubectl logs --follow`.
- `kbr` is an alias for `kubectl run`
- `kbn` is a function for `kubectl config set-context $(kubectl config current-context) --namespace=$1`

- `wkb` is an alias for `watch -n 1 kubectl`
- `kb_clusters` is an alias for `kubectl config get-contexts`
- `kb_switch_cluster` is an alias for `kubectl config use-context`
- `kb_creds` is an alias for `kubectl config view`

[1]: https://kubernetes.io/
