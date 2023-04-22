source <(kubectl completion bash)
alias k=kubectl
complete -F __start_kubectl k # autocomplete k

# get yaml object instead of applying the changes
alias kg="kubectl --dry-run=client -o yaml get"
complete -F __start_kubectl kd

alias kr="kubectl replace -f"
alias kad="kubectl --dry-run=client apply -f"
alias ka="kubectl apply -f"

# delete resources immediately
alias kx="kubectl delete --grace-period=0 --force"
alias kde="kubectl describe"
alias kg="kubectl get"
alias kc="kubectl create"
alias kr="kubectl replace -f"
alias ke="kubectl edit"

export d="--dry-run=client"
export o="-o yaml"
export do="--dry-run=client -o yaml"
