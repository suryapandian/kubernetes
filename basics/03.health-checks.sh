
kubectl get replicas 
kubectl get replicaset

readinessProbe: # a key in deployment yaml which is used to check health check once the pods are ready

```
 readinessProbe:
          # length of time to wait for a pod to initialize
          # after pod startup, before applying health checking
          initialDelaySeconds: 5
          # Amount of time to wait before timing out
          timeoutSeconds: 1
          # Probe for http
          httpGet:
            # Path to probe
            path: /
            # Port to probe
            port: 80
```

kubectl describe po/helloworld-deployment-with-bad-readiness-probe-f49c77d55-88nbf  #useful information

#Similar to readinessProbe there is `livenessProbe`


#readinessProbe will help us understand if the pod has gone to ready status.
#livenessProble will help us understand if the pod continues to be in ready state after going up.