kubectl get all # gets all pods
kubectl get rs # gets all replica sets

kubectl exec -it deployment-name #login to the terminal

kubectl exec -it  deployment-name -c pod-name /bin/bash  # if pods for a deployment are present in multiple container 


kubectl create -f helloworld.yaml #creates an app from the deployment file. Deployment file will have docker image etc…


kubectl create -f helloworld.yaml —record #records the rollout history

kubectl rollout history deployment/deployment-name # we can see deployment history

Kubectk rollout undo # will revert the changes 

kubectl expose deployment helloworld --type=NodePort #exposes the service to be accessed by tcp/http protocol

minikube service helloworld # opens the application and gives detail about the application like the URL etc…

kubectl get deployment # displays the running deployment

kubectl get deployment/helloworld -o yaml # displays the yaml config for the particular yaml


kubectl get services 
