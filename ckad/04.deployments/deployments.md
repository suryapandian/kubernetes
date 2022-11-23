### Deployment
Rollin updates, changing deployment def of one pod after the other.
To revert, that is why we call the reverts as rollbacks

When we create a new deployment, a rollout is created. A new rollout creates a new deployment-revision.

```
kubectl create -f helloworld.yaml —record #records the rollout history

kubectl set image deployment/navbar-development helloworld=karthequian/helloworld:blue #	the same deployment replaced with new image, here the deployment name is navbar-development

kubectl rollout history deployment/deployment-name # we can see deployment history

kubectl rollout undo deployment/deployment-name # will revert the changes

kubectl rollout undo deployment/deployment-name —to-revision=1 #here is the number of revision that we see in history

#We can also describe deployment, services etc…

kubectl describe deployment deployment-name
```


`k create -f deployment-definition.yml`

`k rollout status deployment/deployment-name`


`k rollout history deployment/deployment-name`

When a new deployment is created, first we create a new replica set which then creates the pods for the new deployment.


### Types of deployment strategy

- Rolling update - default:
	We destroy older version one by one and create new version. This way application is not down

- Recreate strategy:
	Destroy all of the old version and create new version of new application

### Commands

`k apply -f deployment-def.yml` - would apply the definition

`k set image deployment/deployment-name nginx=nginx:1.9.1` would update the image of the deployment but the deployment file would remain the same.


```
kubectl label deployment webapp app=frontend
kubectl scale --replicas 3 deployment webapp
kubectl set env deployment/webapp WHOAMI="HAL 9000"
```
