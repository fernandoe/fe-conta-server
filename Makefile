docker-build:
	docker build -t fernandoe/fe-conta-server .

docker-run:
	docker run --rm -p 80:8000 -d fernandoe/fe-conta-server

kube-server:
	kubectl create -f k8s/server.yaml

kube-get-pods:
	kubectl get pods -o wide

kube-get-svc:
	kubectl get svc

kube-expose-fe-conta:
	kubectl expose deployment fe-conta --type=NodePort

minikube-start:
	minikube start --docker-env http_proxy=http://15.85.195.199:8088 --docker-env https_proxy=http://15.85.195.199:8088 --docker-env no_proxy=192.168.99.0/24

minikube-open:
  minikube service fe-conta
