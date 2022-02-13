kubectl get all -A -o yaml #generate  an yaml output with all resources from all namespaces

kubectl get <resource> -n <namespace> -o yaml > <filename>

kubectl run redis --image=redis123 --dry-run=client -o yaml > pod.yaml
#this wont create a pod, but will create the def in yaml file. i.e) adding dry-run=client

k edit k8s-definition #opens the definition in the default editor

k get all #gets all definitions in k8s

k create deployment http-frontend --replicas=3 --image=httpd:2.4-alpine

kubectl run redis --image=redis123 --dry-run=client -o yaml > pod.yaml
#this wont create a pod, but will create the def in yaml file. i.e) adding dry-run

k get svc #gets list of services




: '
The default output format for all kubectl commands is the human-readable plain-text format.

The -o flag allows us to output the details in several different formats.


kubectl [command] [TYPE] [NAME] -o <output_format>

Here are some of the commonly used formats:


    -o jsonOutput a JSON formatted API object.

    -o namePrint only the resource name and nothing else.

    -o wideOutput in the plain-text format with any additional information.

    -o yamlOutput a YAML formatted API object.
'