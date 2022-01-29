kubectl create -f helloworld.yaml —record #records the rollout history

kubectl set image deployment/navbar-development helloworld=karthequian/helloworld:blue #	the same deployment replaced with new image, here the deployment name is navbar-development



kubectl rollout history deployment/deployment-name # we can see deployment history

Kubect rollout undo deployment/deployment-name # will revert the changes 


Kubect rollout undo deployment/deployment-name —to-revision=1 #here is the number of revision that we see in history

#We can also describe deployment, services etc…

kubectl describe deployment deployment-name

