kubectl run hello-world #used to deploy an application on the cluster
kubectl run nginx --image=nginx
kubectl run redis --image=redis123 --dry-run=client -o yaml > pod.yaml
#this wont create a pod, but will create the def in yaml file. i.e) adding dry-run
k explain pods --recursive #gives diff option to update pod-def file
k explain pods --recursive | grep envFrom -A3
k explain job --recursive | grep less
kubectl edit pod <pod-name>
#will open the definition yaml, we can then edit

kubectl get pod <pod-name> -o yaml > pod-definition.yaml
#the above command also extracts definition of a pod into a yaml

alias k8s='kubectl'
k8s cluster-info #used to view info about the cluster
k8s get nodes #list all nodes of the cluster


