kubectl create secret generic secret-config-name --from-literal=secret_key=secret_value

kubectl get secrets

kubectl get secret secret_key_name -o yaml //here you can see the secret and its value that is encoded

To use a secret in the deployment

```
containers:
      - name: secretreader
        image: karthequian/secretreader:latest
        env:
        - name: api_key
          valueFrom:
            secretKeyRef:
              name: secret-config-name
              key: secret_key_name%      
```
