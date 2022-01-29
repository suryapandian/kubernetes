which minikube #helps create and manage k8s clusters
minikube start #creates k8s clusters
minikube dashboard

kubectl version 
kubectl cluster-info #check status of k8s clusters
kubectl get nodes 

kubectl get nodes --help #Lists all possible commands wrt nodes

# To make use of local containers
 $(minikube docker-env)
 #then build the image and use the image in the next step

kubectl create deployment first-deployment --image=web

kubectl get deployments