k create configmap \
  app-config \ 
  --from-literal=APP_COLOR=blue
  --from-literal=APP_NUMBER=four


k create configmap <config-name> --from-file=<path-to-file>

k create configmap \
  app-config --from-file=app_config.properties

k create cm #cm is shorthand for configmap


k create secret generic <secret-name> --from-literal=<key>=<value>

k create secret generic <secret-name>  --from-file=<path-to-file>


k create secret generic db-secret  \
  --from-literal=DB_Host=sql01 \
  --from-literal=DB_Password=password123 \
  --from-literal=DB_User=root 

  k create secret generic db-secret  \
  --from-literal=DB_Host=c3FsMDEK \
  --from-literal=DB_Password=cGFzc3dvcmQxMjMK \
  --from-literal=DB_User=cm9vdAo= 


