#
# Provides 'kubectl' aliases and utiities.
#
# Authors:
#   Bruno Miguel Custodio <brunomcustodio@gmail.com>
#

# Return if requirements are not found.
if (( ! ${+commands[kubectl]} )); then
  return 1
fi

# Enable completion for 'kubectl'.
cache_file="${0:h}/cache.zsh"
kubectl_command="${commands[kubectl]}"

if [[ "${kubectl_command}" -nt "${cache_file}" || ! -s "${cache_file}" ]]; then
  ${kubectl_command} completion zsh >! "${cache_file}" 2> /dev/null
fi

source "${cache_file}"
unset cache_file kubectl_command

#
# Aliases
#

alias kb='kubectl'

alias kba='kubectl apply'
alias kbc='kubectl create'
alias kbD='kubectl delete'
alias kbd='kubectl describe'
alias kbe='kubectl exec'
alias kbf='kubectl port-forward'
alias kbg='kubectl get'
alias kbl='kubectl logs'
alias kblf='kubectl logs --follow'
alias kbr='kubectl run'

alias wkb='watch -n 1 kubectl'
alias kb_clusters='kubectl config get-contexts'
alias kb_switch_cluster='kubectl config use-context'
alias kb_creds='kubectl config view'

kbn () {
  kubectl config set-context $(kubectl config current-context) --namespace=$1
}

# Cluster name formatting
zstyle ':prezto:module:kubernetes' prod-clusters-default '^(?!.*dev).*$'
