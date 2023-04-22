grep -i #case insensitive search

kubectl get all -A -o yaml #generate  an yaml output with all resources from all namespaces

kubectl get <resource> -n <namespace> -o yaml > <filename>

kubectl run redis --image=redis123 --env=var1=val1 --dry-run=client -o yaml > pod.yaml
#this wont create a pod, but will create the def in yaml file. i.e) adding dry-run=client

k edit k8s-definition #opens the definition in the default editor

k get all #gets all definitions in k8s

k get pod, svc
kubectl config --kubeconfig=/root/my-kube-config use-context research

k create deployment http-frontend --replicas=3 --image=httpd:2.4-alpine
kubectl create ingress ingress-test --rule="wear.my-online-store.com/wear*=wear-service:80"
kubectl create ingress ingress --rule="ckad-mock-exam-solution.com/video*=my-video-service:8080" --dry-run=client -oyaml > ingress.yaml
kubectl create ingress ingress-vh-routing \
  --rule watch.ecom-store.com/video=video-service:8080 \
  --rule apparels.ecom-store.com/wear=apparels-service:8080 \
  --annotation nginx.ingress.kubernetes.io/rewrite-target=/

kubectl create quota myrq --hard=cpu=1,memory=1G,pods=2 --dry-run=client -o yaml

--all-namespaces or -A #gets details from all namespaces

kubectl run busybox --image=busybox --command --restart=Never -it --rm -- env
# -it will help in seeing the output, --rm will immediately delete the pod after it exits
# or, just run it without -it

#If pod crashed and restarted, get logs about the previous instance _
kubectl logs nginx -p
# or
kubectl logs nginx --previous

#Execute a simple shell on the nginx pod
kubectl exec -it nginx -- /bin/sh

kubectl rollout undo deploy nginx --to-revision=2
kubectl rollout history deploy nginx --revision=4
kubectl autoscale deploy nginx --min=5 --max=10 --cpu-percent=80
kubectl scale deploy nginx --replicas=5
kubectl rollout pause deploy nginx
kubectl rollout resume deploy nginx


kubectl create job pi  --image=perl:5.34 -- perl -Mbignum=bpi -wle 'print bpi(2000)'
kubectl wait --for=condition=complete --timeout=300s job pi

kubectl create cj busybox --image=busybox --schedule="*/1 * * * *" -- /bin/sh -c 'date; echo Hello from the Kubernetes cluster'

kubectl get secret mysecret2 -o json | jq -r .data.username | base64 -d  # on MAC it is -D

kubectl get sa -A


docker run --name=ubunt-sleeper --entrypoint=sleep ubuntu-sleeper 10
#will run the docker image `ubuntu-sleeper` replaces the entrypoint with `sleep` command
#replaces cmd with 10`

kubectl label po nginx2 app=v2 --overwrite

docker run -d #runs in detached mode

docker logs -f helloworld # -f live log trails

docker run -e APP_COLOR=pink simple-web-app-color #setting an environment variable before running a docker image

: '
The default output format for all kubectl commands is the human-readable plain-text format.

The -o flag allows us to output the details in several different formats.

kubectl [command] [TYPE] [NAME] -o <output_format>

Here are some of the commonly used formats:


    -o json

    -o name

    -o wide

    -o yaml
'
