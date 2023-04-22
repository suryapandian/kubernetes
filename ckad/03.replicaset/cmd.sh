k create -f rep-controller-definition.yaml

k create -f rep-set-def.yaml
k get rs
k get pods

# after creating the replicaset if we need to change the number of max pods
k replace -f rep-set-def.yaml #after editing the yaml run this
k scale --replicas=6 -f rep-set-def.yaml #the file won't get updated in this case
k scale --replicas=6 replicaset surya-replicaset
#k scale --replicas=6 typeofdef nameofdef

k delete replicaset surya-replicaset
