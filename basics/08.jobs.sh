
#Jobs are constructs that run a deployment once, the output of the job is kept around until it is removed

kubectl create -f job-yaml
kubectl get jobs

Similarly there is cronjob

kubectl get cronjobs

kubectl edit cronjobs/cron-name //edit and update suspend to true to stop a cronjob