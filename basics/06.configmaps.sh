
#Config maps of kubectl helps to provide configuration for the k8s

kubectl create configmap config-map-name --from-literal=log_level=debug

        env:
        - name: log_level
          valueFrom:
            configMapKeyRef:
              name: logger #Read from a configmap called log-level
              key: log_level  #Read the key called log_level%   

#The above snippet reads the value from the configmap

 kubectl get configmaps 

kubectl get configmap/config-map-name -o yaml

