docker tag azure-vote-front:latest starthubacr.azurecr.io/azure-vote-front:redis-v1



kubectl apply -f kubernetes-manifests/azure-vote-all-in-one-redis.yml

kubectl scale --replicas=3 deployment/azure-vote-front

kubectl set image deployment azure-vote-front azure-vote-front=starthubacr.azurecr.io/azure-vote-front:redis-v2