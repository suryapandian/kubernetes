#vimrc

set nu # set numbers
set tabstop=2 shiftwidth=2 expandtab
# expandtab - converts tab into space
# use 2 spaces instead of tab
#shiftwidth: number of spaces inserted for indendation
set ai # autoindent: when go to new line keep same indentation

#bashrc

# enable autocompletion
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
alias kr="kubectl replace --force -f" #force kills and creates if it is not replacable
complete -F __start_kubectl kD

k run --help #VERY VERY IMPORTANT gives all the arguments that is valid for k run
#
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
