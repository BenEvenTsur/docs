# Rancher Docs

Rancher documentation website on container.

**Rancher** is a complete software stack for teams adopting containers. It addresses the operational and security challenges of managing multiple Kubernetes clusters, while providing DevOps teams with integrated tools for running containerized workloads.

Run command:
```bash
PORT=8080
docker container run -d -p $PORT:$PORT -e PORT=$PORT -e HOSTNAME=$(hostname -i) beneventsur/rancher-docs:2.3.5
```

# K8S Docs

Kubernetes documentation website on container.

**Kubernetes** (K8s) is an open-source system for automating deployment, scaling, and management of containerized applications.

Run command:
```bash
PORT=8080
docker container run -d -p $PORT:1313 beneventsur/k8s-docs:1.17
```
