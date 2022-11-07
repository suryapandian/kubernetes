# eBPF
- filter packets
- like sidecar but in the kernel
- app,uses sys calls to talk to kernel
- instrument the program with eBPF, all sys calls could be event triggered packets
- attach eBPF without restarting pods


## sidecar vs eBPF

### sidecar:
- same namespace
- add definition in app yaml
- needs pod restart

### eBPF
- more info not just the pod info
- share info present in node
- instead of different instance every pod, just one eBPF logging and tracing

### eBPF tools:

pixie 
cilim


### service mesh:
connecting apps while abstracting connections
with cilim, eBPF is close to service mesh
envoy used in cilium
Linkerd uses it's own proxy


suricata - security tool

service msh might offer thse:

sidecar - proxy per pod
istio - proxy per ns
eBPF -  proxy per node when interaction with noisy neighbours is not an issue
