kubectl get pods --show-labels

kubectl label pod/helloworld app=helloword-app —overwrite

kubectl label pod/helloworld author- #to remove labels

kubectl get pods --selector env=production #search based on label’s key and value

kubectl get pods --selector dev-lead=carisa,env=staging #search by multiple label

kubectl get pods --selector dev-lead!=carisa,env=staging #search by !=

kubectl get pods -l 'release-version in (1.0,2.0)' # search labels with multiple values

k get pods -l env=prod

kubectl get pods -l 'release-version not in (1.0,2.0)'

k get pods --no-headers | wc -l
