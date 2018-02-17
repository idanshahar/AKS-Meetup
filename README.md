AKS & ACR Meetup
=================================
Presentation
------------
[AKS & ACR](https://ptdrv.linkedin.com/ma4tcmn)

Prerequisites
------------
1. Azure CLI - [Installation Instructions](https://docs.microsoft.com/en-us/azure/aks/tutorial-kubernetes-deploy-cluster)
2. kubectl - [Installation Instructions](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
3. Docker - [Installation Instructions](https://docs.docker.com/install/)
4. Docker Compose - [Installation Instructions](https://docs.docker.com/compose/install/)



AKS
------------------------------
### Create an AKS Cluster
```
# create a resource group
az group create --name ${RESOURCE_GROUP_NAME} -l ${REGION} 

# deploy an AKS cluster
az aks create --name ${CLUSTER_NAME} -g ${RESOURCE_GROUP} 
```

### Upgrade an AKS Cluster

[![asciicast](https://asciinema.org/a/Le9SvNjlHZmZ4oL6KnhU8Oabt.png)](https://asciinema.org/a/Le9SvNjlHZmZ4oL6KnhU8Oabt)

```
az aks upgrade -n ${CLUSTER_NAME} -g ${RESOURCE_GROUP} -k 1.8.2
```

### Scale an AKS Cluster

```
az aks scale -n myawesomeaks -g ${CLUSTER_NAME} -c ${NUMBER_OF_NODES}
```

ACR
------------------------------
### Create an ACR
```
# create an ACR
az acr create -g ${ACR_RESOURCE_GROUP} -n ${ACR_NAME} --sku Premium

# login to ACR
az acr login --name ${ACR_NAME}
```

