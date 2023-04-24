docker build -t us-west4-docker.pkg.dev/share-inspire-k8s-382622/share-inspire/sifastapi --platform linux/amd64 . 
docker push us-west4-docker.pkg.dev/share-inspire-k8s-382622/share-inspire/sifastapi
kubectl create deployment hello-app --image=us-west4-docker.pkg.dev/share-inspire-k8s-382622/share-inspire/sifastapi
kubectl expose deployment hello-app --name=hello-app-service --type=LoadBalancer --port 80 --target-port 80