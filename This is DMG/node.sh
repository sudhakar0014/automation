cd $HOME/nodejs/
docker build -t hello-nodejs .
kubectl apply -f hello_nodejs_deployment.yml
kubectl apply -f hello_nodejs_service.yml
