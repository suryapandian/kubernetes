# HELM

Searches helm charts from public artifacts:

`helm search hub wordpress`


To add private helm repository:

`helm repo add bitnami https://chart.bitnami.com`

search for a chart within added repos

` helm search repo joomla`


List helm repo:

`helm repo list`

After finding chart, to install chart

`helm install release-name chart-name`

(each installation of a chart is called release)


`helm uninstall release-name`

`helm pull --untar bitnami/wordpress` to just pull and not install