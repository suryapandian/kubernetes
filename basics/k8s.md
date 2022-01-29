A Kubernetes cluster consists of two types of resources:
The Master coordinates the cluster
Nodes are the workers that run applications
The Master is responsible for managing the cluster. 
A node is a VM or a physical computer that serves as a worker machine in a Kubernetes cluster. Each node has a Kubelet, which is an agent for managing the node and communicating with the Kubernetes master. The node should also have tools for handling container operations, such as containerd or Docker. A Kubernetes cluster that handles production traffic should have a minimum of three nodes.
Masters manage the cluster and the nodes that are used to host the running applications.
A Pod is the basic execution unit of a Kubernetes application. Each Pod represents a part of a workload that is running on your cluster. 