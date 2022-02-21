#vimrc

set nu # set numbers
set tabstop=2 shiftwidth=2 expandtab # use 2 spaces instead of tab
set ai # autoindent: when go to new line keep same indentation

#bashrc

# enable autocompletion
source <(kubectl completion bash)

alias k=kubectl
complete -F __start_kubectl k # autocomplete k

# get yaml object instead of applying the changes
alias kd="kubectl --dry-run=client -o yaml"
complete -F __start_kubectl kd

alias ka="kubectl apply -f"

# delete resources immediately
alias kD="kubectl delete --grace-period=0 --force"
complete -F __start_kubectl kD

# delete resources immediately from file
alias kDf="kubectl delete --grace-period=0 --force -f"

# In the following, $1 is the filepath of a yaml k8s object.

# vim apply. edit a file and immediately apply it.
va() {
  vim $1
  ka $1
}

# kubectl edit. Delete the resource of a file, edit and apply it.
ke() {
  kDf $1
  va $1
}

# kubectl replace. Delete and recreate the same resource.
kr() {
  kDf $1
  ka $1
}