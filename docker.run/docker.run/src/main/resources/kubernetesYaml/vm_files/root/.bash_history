kubectl get service
kubectl get deployments
kubectl expose deployment nginx --port=80 -o yaml > services.yaml
kubectl get services
kubectl create ingress nginx --class=default --rule='nginx.10.0.0.50.io/*=nginx:80' -o yaml > ingress.yaml
kubectl describe ingress nginx
curl 192.168.212.121:80
curl nginx.10.0.0.50.io
kubectl delete service nginx
kubectl delete deployment nginx
kubectl delete ingress nginx
kubectl apply -f https://projectcontour.io/examples/kuard.yaml
kubectl get po,svc,ing -l app=kuard
curl 127.0.0.1
curl 10.0.0.50:80
kubectl get po,svc,ing -l app=kuard
kubectl describe ingress kuard
kubetctl delete ingress kuard
kubectl delete ingress kuard
kubectl get all
kubectl create ingress nginx --rule='nginx.10.0.0.50.io/*=nginx:80' -o yaml > ingress.yaml
kubectl delete ingress nginx
kubectl create ingress kuard --rule='kuard.10.0.0.50.io/*=kuard:80' -o yaml > ingress.yaml
kubectl describe ingress kuard
curl kuard.10.0.0.50.io
kubectl scale deployment kuard --replicas=1
kubectl get all
vi ingress.yaml 
kubectl delete ingress nginx
kubectl delete ingress kuard
kubectl get all
kubectl create ingress kuard --rule="*/*=kuard:80" -o yaml > ingress.yaml
kubectl create ingress kuard --rule="*.10.0.0.50.io/*=kuard:80" -o yaml > ingress.yaml
vin ingress.yaml 
vi ingress.yaml 
kubectl describe ingress kuard
curl 10.0.0.50
kubectl create ingress --help
kubectl delete ingress kuard
kubectl create ingress kuard --default-backend='kuard:80'
kubectl describe ingress kuard
kubectl edit ingress kuard
kubectl edit ingress kuard > ingress.yaml
kubectl get ingress kuard -o yaml > ingress.yaml
kubetctl create ingress kuard1 --class=default --rule='kaurd.10.0.0.50/*=kuard:80' --dry-client=true -o yaml
kubectl create ingress kuard1 --class=default --rule='kaurd.10.0.0.50/*=kuard:80' --dry-client=true -o yaml
kubectl create ingress --help
kubectl create ingress kuard1 --class=default --rule='kaurd.10.0.0.50/*=kuard:80' --dry-run=client -o yaml
nano ingress.yaml 
kubectl delete ingress kuard
kubectl create -f ingress.yaml 
kubeclt describe ingress kuard
kubectl describe ingress kuard
curl kaurd.10.0.0.50
192.168.212.123:8080
curl 192.168.212.123:8080
curl 10.0.0.50
kubectl delete ingress kuard
vi ingress.yaml 
kubectl create -f ingress.yaml 
kubectl describe ingress kuard
curl 10.0.0.50
kubectl delete ingress kuard
vi ingress.yaml 
kubectl create -f ingress.yaml 
kubectl describe ingress kuard
kubectl get po,svc,ing -l app=kuard
kubectl delete po,svc,ing -l app=kuard
kubectl apply -f https://projectcontour.io/examples/kuard.yaml
kubectl get all
kubectl get ingress
kubectl describe ingress kuard
kubectl delete po,svc,ing -l app=kuard
kubectl get all
kubectl delete deployment kuard
kubectl get all
kubectl apply -f https://projectcontour.io/examples/kuard.yaml
kubectl get ingress -o wide
kubectl create --help
exit
kubectl get all
ls
cd ingress/
ls
kubectl delete -f deployment.apps/kuard
kubectl get all
kubectl describe deployment.apps/kuard
kubectl delete -f deployment.apps/kuard -n ingres
kubectl delete -f deployment kuard -n ingres
kubectl delete deployment kuard -n ingres
kubectl delete service kuard -n ingres
kubectl get all
kubectl explain pod.spec
kubectl explain pod.spec --recursive
kubectl explain pod.spec --recursive | more
kubectl explain pod.spec --recursive | grep -A10 toleration
kubectl explain node --recursive | grep -A10 taints
kubectl explain node | grep -A10 taints
kubectl explain node --recursive | grep -B20 -A10 taints
kubectl explain node.spec | grep -A10 taints
kubectl explain node.spec | grep taints
kubectl explain node.spec | grep -A10 -B10 taints
exit
ls
cd test
ls
vi podstatus.yaml 
kubectl run mypod --image=nginx -o yaml > mypod.yaml
ls
cat mypod.yaml 
kubectl get pods
watch -n 1 kubectl get pods
kubectl delete pod mypod --force=true
exit
ls
cd test
ls
vi mypod.yaml 
kbectl get pods
kubectl get pods
exit
kubectl get pods
kubectl config set-context --current --namespace default
kubectl get pods
kubectl config set-context --current --namespace ingres
ls
kubectl get pods
kubectl version
kubectl cluster-info
kubectl get nodes
exit
ls
mkdir revision
ls
cd revison
cd revision
ls
kubectl config get-context
kubectl config -h 
kubectl config get-contexts
kubectl delte namespace ingres
kubectl delete namespace ingres
ls
kubectl config get-context
kubectl config get-contexts
kubectl get namespace
kubectl context -help
kubectl context --help
kubectl config --help
kubectl view 
kubectl view --help
kubectl config view
kubectl config view -o jsonpath -h
kubectl config view -o jsonpath="{.contexts[0].context.cluster}
/
\
kubectl config view -o jsonpath="{.contexts[0].context.cluster}"
kubectl config view -o jsonpath="{.items[0].contexts[0].context.cluster}"
kubectl config view -o jsonpath="{.items[0]}"
kubectl config view -o=jsonpath="{.items[0]}"
kubectl config view -0=json
kubectl config view -o=json
kubectl config view -o=jsonpath="{.items[0].clusters[0].name}"
kubectl config view -o=jsonpath="{.items[0].clusters[0]}"
kubectl config view -o=jsonpath="{.items[0].clusters}"
kubectl config view -o=jsonpath="{.clusters[0].name}"
kubectl config view -o=jsonpath="{.clusters[0].name}{\n}"
kubectl config view -o=jsonpath="{.clusters[0].name}{'\n'}"
kubectl config view -o=jsonpath="{range .clusters[*].name}{'\n'}"
kubectl config view -o=jsonpath="{range .clusters[*]}{.name}{'\n'}"
kubectl config view -o=jsonpath="{range .clusters[*]}{.contexts.context.namespace}{'\n'}"
kubectl config view -o=jsonpath="{range .clusters[*]}{.contexts[0].context.namespace}{'\n'}"
kubectl create namespace prac1
kubectl config set-context --current --namespace=prac1
mv ../revision/ ../prac1
ls
cd ..
ls
cd prac1/
ls
kubectl config view -o jsonpath="{range contexts[*]}{context.namespace}"
kubectl config view -o jsonpath="{range clusters[*]}{contexts[0]context.namespace}"
kubectl config view -o jsonpath="{range .clusters[*]}{contexts[0]context.namespace}"
kubectl config view -o jsonpath="{range .clusters[*]}{contexts[0].context.namespace}"
kubectl config view -o jsonpath="{range .clusters[*]}{.contexts[0].context.namespace}"
kubectl run mypod --image=busybox --port=80
kubectl get pods
kubectl describe pod mypod
kubectl get pods
kubectl logs mypod
kubectl logs mypod -n myprac1
kubectl logs mypod -n prac1
kubeclt delete pod mypod
kubectl delete pod mypod
kubectl get pods
kubectl run help
kubectl run -help
kubectl run --help
kubectl run mypod nginx --command -- /bin/bash -c echo "india is my country $date"
kubectl run mypod --image=nginx --command -- /bin/bash -c echo "india is my country $date"
kubectl get pods
kubectl logs mypod
kubectl get pods
kubectl logs mypod
kubectl describe mypod
kubectl describe pod mypod
kubectl run mypod --image=nginx --command -- /bin/bash -c echo $date
kubectl delete pod mypod
kubectl run mypod --image=nginx --command --/bin/bash -c echo $date
kubectl run mypod --image=nginx --command -- /bin/bash -c echo $date
kubectl get pods
kubectl describe mypod
kubectl describe podmypod
kubectl describe pod mypod
kubectl delete pod mypod
kubectl run mypod --image=nginx --command /bin/bash -c echo "india"
kubectl run mypod --image=nginx --command /bin/bash -- -c echo "india"
kubectl get pods
kubeclt logs mypod
kubectl logs mypod
kubectl delete pod mypod
kubectl run mypod --image=nginx --command /bin/bash -- -c -- echo "india"
kubectl get pods
kubectl logs mypod
kubectl describe pod mypod
kubectl get pods
kubectl delete pod mypod
kubectl run mypod --image=nginx --command /bin/bash && -c && echo "india"
kubectl delete pod mypod
kubectl run mypod --image=nginx --command /bin/bash echo "india"
kubectl get logs
kubectl logs mypod
kubectl delete pod mypod
kubectl run mypod --image=nginx --command /bin/bash echo --india
kubectl run mypod --image=nginx --command /bin/bash echo -- india
kubectl logs mypod
kubectl delete pod mypod
kubectl run --help
kubectl run mypod --image=nginx --command -- /bin/bash -c echo "india"
kubectl get pods
kubectl delete pod mypod
kubectl run mypod --image=nginx --command -- /bin/bash -c && echo "india"
kubectl delete pod mypod
kubectl run mypod --image=nginx --command -- '/bin/bash -c && echo "india"'
kubectl get pods
kubectl logs mypod
kubectl describe pod mypod
kubectl delete pod mypod
exit
ls
cd prac1/
ls
mkdir ser
mv selectorLoadBalSer.yaml ser/
mv endpoint.yaml ser/
cp labelpod.yaml ser/
ls
ls ser
mv services.yaml ser/
ls
cat multiCont.yaml 
kubectl get all
kubectl create -f multiCont.yaml 
vi multiCont.yaml 
kubectl create -f multiCont.yaml 
kubectl delete -f multiCont.yaml 
cat multiCont.yaml 
nano multiCont.yaml 
vi multiCont.yaml 
kubectl create -f multiCont.yaml 
kubectl get pods
kubectl logs mypod
kubectl logs mypod -c=mypod
kubectl logs mypod -c=mypod1
kubectl logs mypod -c=mypod2
kubectl get pods
kubectl describe pod mypod
kubectl get nodes
exit
ls
cd pro
cd prac1/
ls
cd ser/
ls
cd ..
ls
kubectl get all
kubectl delete pod mypod
kubectl create -f multiCont.yaml 
kubectl get all
kubectl logs mypod
kubectl logs mypod -c mypod
kubectl delete pod mypod
kubectl run mypod image=vetriraju/java:counter
kubectl run mypod --image=vetriraju/java:counter
kubectl logs mypod
kubectl delete pod mypod
kubectl run mypod --image=vetriraju/java:counter env=[APP_SVC="val",DATA_SVC=val2]
kubectl logs mypod
kubectl delete pod mypod
kubectl run --help
kubectl run mypod --image=vetriraju/java:counter --env=[APP_SVC="val",DATA_SVC=val2]
kubectl run mypod --image=vetriraju/java:counter --env="APP_SVC=val" --env="DATA_SVC=val2"
kubectl logs mypod
kubectl delete pod mypod
kubectl run mypod --image=vetriraju/java:counter --env="APP_SVC=val" --env="DATA_SVC=val2" --env="PORT=8081"
kubectl logs mypod
kubectl delete pod mypod
exit
ls
cd prac1/
ls
kubectl run --help
kubectl run mypod --image=vetriraju/java:counter --image-pull-policy=Always
kubectl get pod mypod -o yaml
kubectl logs mypod
kubectl delete pod mypod
kubectl run mypod --image=vetriraju/java:counter --image-pull-policy=Always --env="PORT=8081"
kubectl logs mypod
kubectl delete pod mypod
ls
vi multiCont.yaml 
ls
cat multiCont.yaml 
kubeclt create -f multiCont.yaml 
kubectl create -f multiCont.yaml 
vi multiCont.yaml 
kubectl create -f multiCont.yaml 
kubctl get pods
kubectl get pods
kubectl logs pod mypod -c=mypod
kubectl logs pod mypod
kubectl logs mypod
kubectl logs mypod -c=mypod
kubectl logs mypod -c=mypod1
kubectl logs mypod -c=mypod3
kubectl logs mypod -c=mypod2
cat multiCont.yaml 
kubectl expose mypod ser1 -c=mypod1 --port=80 --target-port=8081
kubectl expose help
kubectl expose --help
kubectl expose pod mypod --name=ser1 --port=80 --target-port=8081
cat multiCont.yaml 
kubectl expose pod mypod --name=data1 --port=81 --target-port=8082
kubectl describe service ser1
kubectl describe service data1
kubectl get all
curl 10.98.238.32:80/svc/push?counter=5
kubectl logs mypod -c=mypod1
kubectl delete pod mypod
vi multiCont.yaml 
kubectl config view
vi multiCont.yaml 
kubectl create -f multiCont.yaml 
kubectl get pods
kubectl get all
kubectl describe service ser1
curl 10.98.238.32:80/svc/push?counter=5
kubectl logs mypod c=mypod1
kubectl logs mypod -c=mypod1
cat multiCont.yaml 
kubectl get services
kubectl delete service data1
kubectl delete service ser1
kubectl expose pod mypod --name=data1 --port=81 --target-port=80 --type=NodePort
kubectl expose pod mypod --name=ser1 --port=80 --target-port=80 --type=NodePort
kubectl describe service ser1
kubectl describe service data1
curl 10.98.238.32:80/svc/push?counter=5
kubectl get all
curl 10.100.9.35:80/svc/push?counter=5
kubectl logs mypod -c=mypod1
curl 10.104.221.180:81/data/push?counter=5
kubectl logs service data1
kubectl describe service data1
kubectl describe service ser1
kubectl delte -f multiCont.yaml 
kubectl delete -f multiCont.yaml 
kubectl create -f multiCont.yaml 
kubectl describe service ser1
curl 10.104.221.180:81/data/push?counter=5
kubectl get all
curl 10.104.221.180:81/data/push?counter=5
kubectl delete service data1
kubectl expose pod mypod --name=data1 --port=81 --target-port=81 --type=NodePort
kubectl delete pod mypod
vi multiCont.yaml 
kubectl create -f multiCont.yaml 
kubectl get all
curl 10.111.148.245:81/data/push?counter=5
kubectl delete service data1
kubectl expose pod mypod --name=data1 --port=8084 --target-port=80 --type=NodePort
kubectl delete pod mypod
vi multiCont.yaml 
kubectl describe service ser1
kubectl create -f multiCont.yaml 
kubectl get pods
kubectl get all
curl 10.105.166.144:8084/data/push?counter=5
curl 10.100.9.35:80/data/push?counter=5
curl 10.100.9.35:80/svc/push?counter=5
kubectl delete service ser1
kubectl delete service data1
cat multiCont.yaml 
kubectl expose pod mypod --port=81 --target-port=80 --type=NodePort --name=ser1
kubectl describe service ser1
curl 10.105.77.112:81/svc/push?counter=5
kubectl delete -f multiCont.yaml 
kubectl create -f multiCont.yaml 
curl 10.105.77.112:81/svc/push?counter=5
kubectl delete -f multiCont.yaml 
vi multiCont.yaml 
kubectl create -f multiCont.yaml 
curl 10.105.77.112:81/data/push?counter=5
kubectl get service
kubectl delete service ser1
kubectl expose pod mypod --port=80 --target-port=80 --type=NodePort --name=ser1
kubectl describe service ser1
curl 10.104.197.231:80/data/push?counter=5
curl 10.104.197.231:80/svc/push?counter=5
kubectl logs mypod -c=mypod1
kubectl logs mypod -c=mypod2
kubectl logs mypod -c=mypod
kubectl describe service ser1
kubectl expose pod mypod --port=80 --target-port=80 --type=NodePort --name=data1
kubectl get all
kubectl delete -f multiCont.yaml 
kubectl create -f multiCont.yaml 
curl 10.104.197.231:80/svc/push?counter=5
curl 10.96.155.54:80/svc/push?counter=5
kubectl delete service ser1
kubectl delete service data1
kubectl expose pod mypod --port=80 --target-port=8082 --type=NodePort --name=data1
kubectl expose pod mypod --port=80 --target-port=8081 --type=NodePort --name=ser1
kubectl delete -f multiCont.yaml 
vi multiCont.yaml 
kubectl get all
kubectl create -f multiCont.yaml 
kubectl get all
kubectl describe service ser1
curl 10.105.58.126:80/svc/push?counter=5
kubectl logs mypod -c=mypod1
curl 10.103.186.252:80/data/push?counter=5
kubectl logs mypod -c=mypod2
kubectl delete pod mypod
vi multiCont.yaml 
kubectl create -f multiCont.yaml 
curl 10.105.58.126:80/svc/push?counter=5
kubectl logs mypod -c=mypod1
cat multiCont.yaml 
kubeclt get service
kubeclt get services
kubectl get services
curl 10.103.186.252:80/svc/push?counter=5
curl 10.103.186.252:80/
kubectl logs mypod -c=mypod2
kubectl delete pods mypod
vi multiCont.yaml 
kubectl create -f multiCont.yaml 
curl 10.103.186.252:80/
kubectl logs mypod -c=mypod2
cat multiCont.yaml 
kubectl get all
curl 10.105.58.126:80/svc/push?counter=5
kubectl logs mypod -c=mypod1
kubectl delete pods mypod
vi multiCont.yaml 
kubectl create -f multiCont.yaml 
kubectl get all
curl 10.105.58.126:80/svc/push?counter=5
kubectl logs mypod -c=mypod1
kubectl logs mypod -c=mypod2
kubectl get all
curl 10.103.186.252:80
kubectl logs mypod -c=mypod2
cat multiCont.yaml 
kubectl delete pods mypod
vi multiCont.yaml 
kubectl create -f multiCont.yaml 
kubectl get all
curl 10.103.186.252:80
kubectl logs mypod -c=mypod2
cat multiCont.yaml 
vi multiCont.yaml 
kubectl delete pod mypod
kubectl create -f multiCont.yaml 
kubectl get all
curl 10.103.186.252:80
kubectl logs mypod -c=mypod1
kubectl logs mypod -c=mypod2
kubectl delete pod mypod
kubectl delete services ser1
kubectl delete services data1
ls
kubectl get all
cd ser
ls
vi multiPodMultiSer.yaml
nano multiPodMultiSer.yaml 
cat multiPodMultiSer.yaml 
vi multiPodMultiSer.yaml 
nano multiPodMultiSer.yaml 
cat multiPodMultiSer.yaml 
kubectl create -f multiPodMultiSer.yaml 
vi multiPodMultiSer.yaml 
kubectl create -f multiPodMultiSer.yaml 
vi multiPodMultiSer.yaml 
cat multiPodMultiSer.yaml 
vi multiPodMultiSer.yaml 
nano multiPodMultiSer.yaml 
ls
cat multiPodMultiSer.yaml 
kubectl create -f multiPodMultiSer.yaml 
vi multiPodMultiSer.yaml 
kubectl create -f multiPodMultiSer.yaml 
vi multiPodMultiSer.yaml 
kubectl explain service.metadata --recursive
vi multiPodMultiSer.yaml 
kubectl explain service --recursive | grep -A10 metadata
vi multiPodMultiSer.yaml 
kubectl create -f multiPodMultiSer.yaml 
vi multiPodMultiSer.yaml 
kubectl get all
kubectl delete -f multiPodMultiSer.yaml 
vi multiPodMultiSer.yaml 
kubectl create -f multiPodMultiSer.yaml 
kubectl explain pod.spec.containers.ports --recursive
vi multiPodMultiSer.yaml 
kubectl explain pod.spec.containers.ports 
vi multiPodMultiSer.yaml 
kubectl delete -f multiPodMultiSer.yaml 
kubectl create -f multiPodMultiSer.yaml 
kubectl delete -f multiPodMultiSer.yaml 
vi multiPodMultiSer.yaml 
kubectl create -f multiPodMultiSer.yaml 
kubectl get all
kubectl logs serpod
kubectl get all
curl 10.107.3.212:81/svc/push?counter=5
kubectl logs serpod
cat multiPodMultiSer.yaml 
vi multiPodMultiSer.yaml 
kubectl delete -f multiPodMultiSer.yaml 
kubectl create -f multiPodMultiSer.yaml 
kubectl get all
curl 10.100.53.20:81/svc/push?counter=5
kubectl logs serpod
kubectl delete -f multiPodMultiSer.yaml 
vi multiPodMultiSer.yaml 
kubectl create -f multiPodMultiSer.yaml 
kubectl delete -f multiPodMultiSer.yaml 
vi multiPodMultiSer.yaml 
kubectl create -f multiPodMultiSer.yaml 
kubectl get all
crul 10.101.251.213:81/svc/push?counter=5
curl 10.101.251.213:81/svc/push?counter=5
kubectl logs serpod
kubectl logs datapod
kubectl get all
curl 10.105.223.101:82/
kubectl logs serpod
kubectl logs datapod
exit
kubectl get all
kubectl delete -f multiPodMultiSer.yaml 
kubectl get all
ls
cd ..
ls
exit
ls
cd prac1
ls
vi multiCont.yaml 
kubectl create -f multiCont.yaml 
kubectl expose pod mypod --port=8081 --name=ser1
kubectl expose pod mypod --port=8082 --name=data1
kubectl get all
curl 10.101.105.192:8081/svc/push?counter=5
cat multiCont.yaml 
kubectl logs mypod -c=mypod1
kubectl logs mypod -c=mypod2
kubectl get all
curl 10.103.154.111:8082/data/push?counter=3
kubectl logs mypod -c=mypod2
curl 10.103.154.111:8082/
kubectl logs mypod -c=mypod2
kubectl delete pod mypod
kubectl create -f multiCont.yaml 
kubectl get all
curl 10.103.154.111:8082/
kubectl logs mypod -c=mypod2
kubectl logs mypod -c=mypod1
cat multiCont.yaml 
curl 10.103.154.111:8082/svc/push?counter=6
mkdir deployment
rm mkdir
ls
cd deployment/
ls
vi deploy.yaml
kubectl api-resources | grep deployment
kubectl api-resources
ls
vi deploy.yaml 
kubectl create -f deploy.yaml 
vi deploy.yaml 
kubectl explain pod.spec.template.spec.restartPolicy
kubectl explain deployment.spec.template.spec.restartPolicy
vi deploy.yaml 
kubectl create -f deploy.yaml 
vi deploy.yaml 
kubectl create -f deploy.yaml 
vi deploy.yaml 
kubectl create -f deploy.yaml 
kubectl get deployment mydep --recursive
kubectl explain deployment mydep --recursive
kubectl get deployment mydep --recursive
kubectl edit deployment mydep
kubectl get all
kubectl get pod mypod
kubectl get pod mypod -o yaml
kubectl get all
kubectl delete pod mypod
kubectl delete service ser1
kubectl delete service data1
kubectl get all
kubectl get deployment mydep -o yaml
kubectl expose deployment mydep --port=8080 --type=NodePort
kubectl get all
curl 10.105.27.244:8080
kubectl edit deployment mydep
kubectl get all
kubectl edit service mydep
kubectl describe service mydep
kubectl get all
curl 10.105.27.244:80
kubectl scale deployment mydep --replicas=2
kubectl get all
kubectl scale --help
kubectl scale deployment mydep --replicas=1
kubectl get all
kubectl scale --help | grep orphan
kubectl delete -f deploy.yaml 
kubectl get all
kubectl create deployment mydep --replicas=1 --image=nginx --port=80
kubectl get all
kubectl get deployment mydep -o yaml
kubectl get all
curl 10.105.27.244:80
kubectl describe pod mydep-6d677d9dd8-mlkw5
kubectl create endpoiint --help
kubectl create endpoiint --ip-address=192.168.212.65 --port=80
vi endpoint.yaml
kubectl api-resources | grep endpoints
kubectl explain endpoints.spec --recursive
kubectl explain endpoints.subset --recursive
kubectl explain endpoints.subsets --recursive
nano endpoint.yaml 
vi endpoint.yaml 
kubectl create -f endpoint.yaml 
vi endpoint.yaml 
kubectl create -f endpoint.yaml 
vi endpoint.yaml 
kubectl create -f endpoint.yaml 
vi endpoint.yaml 
kubectl delete endpoint mydep
kubectl delete endpoints mydep
kubectl create -f endpoint.yaml 
kubectl get all
curl 10.105.27.244:80
kubectl describe service mydep
ls
rm endpoint.yaml 
ls
vi deploy.yaml 
kubectl describe pod mydep-6d677d9dd8-mlkw5
vi deploy.yaml 
kubectl edit deployment mydep
kubectl delete -f deploy.yaml 
vi deploy.yaml 
kubectl create -f deploy.yaml 
kubectl get all
kubectl describe deployment mydep
kubectl get deployment mydep -o yaml
kubectl get all
curl 10.105.27.244:80
kubectl autoscale --help
kubectl get all
kubectl autoscale deployment mydep --min=1 --max=3 --cpu-percent=70%
kubectl autoscale deployment mydep --min=1 --max=3 --cpu-percent=70
kubectl get all
kubectl delete autoscale mydep
kubectl delete horizontalpodautoscaler.autoscaling/mydep
vi autoscale.yaml
kubectl api-resources | grep autoscal
ls
cd prac1/
ls
cd deployment/
ls
vi autoscale.yaml 
kubectl get pods
kubectl get all
ls
kubectl explain hpa -o yaml
kubectl explain HorizontalPodAutoScaler -o yaml
kubectl explain HorizontalPodAutoScaler --recursive
nano autoscale.yaml 
ls
vi autoscale.yaml 
kubectl get all
kubectl create -f autoscale.yaml 
kubectl api-resources | autoscal
kubectl api-resources | grep autoscal
vi autoscale.yaml 
cat autoscale.yaml 
kubectl create -f autoscale.yaml 
kubectl get all
kubectl delete -f autoscale.yaml 
vi autoscale.yaml 
kubectl api-resources | grep deployment
kubectl create -f autoscale.yaml 
kubectl get all
cat autoscale.yaml 
kubectl edit horizontalpodautoscaler.autoscaling/mydep
kubectl get all
kubectl explain hpa --recursinve
kubectl explain hpa --recursive
vi autoscale.yaml 
kubectl get all
kubectl explain deployment.spec | grep strategy
kubectl explain deployment.spec.strategy
exit
kubectl get all
watch n -1 kubectl get all
watch kubectl get all
ls
cd prac1/
ls
cd deployment/
ls
kubectl get all
kubectl autoscale deployment mydep --min=1 --max=3 --cpu-percent=70
kubectl edit horizontalpodautoscaler.autoscaling/mydep
watch -n 1 kubectl get all
kubectl scale deployment mydep --replicas=1
watch -n 1 kubectl get all
kubectl get all
kubctl rollout history deployment mydep
kubectl rollout history deployment mydep
kubectl scale deployment mydep --replicas=2 --record
kubectl get all
kubectl rollout histroy deployment mydep
kubectl rollout history deployment mydep
kubectl scale deployment mydep --replicas=1 --record
kubectl rollout history deployment mydep
kubectl get all
kubectl rollout history deployment mydep
kubectl scale deployment mydep --replicas=2 --record
kubectl get all
kubectl rollout history deployment mydep
kubectl scale deployment mydep --replicas=1 --record=true
kubectl rollout histroy deployment mydep
kubectl rollout history deployment mydep
kubectl edit deployment mydep --record
kubectl get all
kubectl rollout history deployment mydep
kubectl get deployment mydep -o yaml
kubectl rollout history deployment mydep
kubectl rollout undo deployment mydep --to-revision=1
kubectl get all
kubectl get deployment mydep -o yaml
kubectl get all
kubectl check deployment mydep
kubectl --help
kubectl rollout -h
kubectl get all
kubectl rollout status deployment mydep
kubectl rollout status deployment mydep --record
kubectl rollout pause deployment mydep
kubectl rollout resume deployment mydep
kubectl scale deployment mydep --replicas=4
kubectl rollout pause deployment mydep
kubectl rollout resume deployment mydep
kubectl scale deployment mydep --replicas=1
kubectl rollout resume deployment mydep
kubectl scale deployment mydep --replicas=1
kubectl rollout pause deployment mydep
kubectl rollout resume deployment mydep
kubectl scale deployment mydep --replicas=4
kubectl rollout pause deployment mydep
kubectl rollout resume deployment mydep
kubectl edit hpa mydep
kubectl scale deployment mydep --replicas=1
kubectl rollout pause deployment mydep
kubectl rollout resume deployment mydep
kubectl scale deployment mydep --replicas=6
kubectl rollout pause deployment mydep
kubectl scale deployment mydep --replicas=1
kubectl get all
ls
vi deploy.yaml 
kubectl apply -f deploy.yaml 
kubectl get all
kubectl scale deployment mydep --replicas=4
kubectl get all
kubectl logs pod/mydep-6fc979ddd4-bmjns
kubectl delete -f deploy.yaml 
kubectl get all
kubectl delete hpa mydep
ls
vi deploy.yaml 
kubectl create -f deploy.yaml 
exit
watch kubectl get all
kubectl get all
kubectl delete deployment mydep
kubectl delete service mydep
kubectl get all
ls
cd prac1/
ls
cd deployment/
ls
kubectl create -f deploy.yaml 
kubectl get all
kubectl logs mydep-67b6489769-fx2tx
cat deploy.yaml 
kubectl delete -f deploy.yaml 
vi deploy.yaml 
kubectl create -f deploy.yaml 
kubectl get all
kubectl logs mydep-567f968cc4-cqwcn
kubectl delete -f deploy.yaml 
vi deploy.yaml 
kubectl create -f deploy.yaml 
kubectl get all
kubectl logs mydep-5b75c97c55-2fsbn
kubectl delete -f deploy.yaml 
vi deploy.yaml 
kubectl create -f deploy.yaml 
kubectl get all
kubectl logs mydep-567f968cc4-7ndqg
kubectl delete -f deploy.yaml 
vi deploy.yaml 
kubectl create -f deploy.yaml 
kubectl get all
kubectl logs mydep-567f968cc4-xzv8c
kubectl delete -f deploy.yaml 
vi deploy.yaml 
kubectl create -f deploy.yaml 
kubectl get all
kubectl logs mydep-64d79c5785-hngkw
vi deploy.yaml 
kubectl apply -f deploy.yaml 
kubectl get all
kubectl logs mydep-7bfdbd8d86-ssvj5
vi deploy.yaml 
kubectl apply -f deploy.yaml 
kubectl get all
kubectl logs mydep-6bc7c549f7-hcl6k
vi deploy.yaml 
kubectl apply -f deploy.yaml 
kubectl get all
kubectl logs mydep-69498b49b9-mhtmh
echo ${date}
echo $(date)
vi deploy.yaml 
kubectl apply -f deploy.yaml 
kubectl get all
kubectl logs mydep-d5bdff64f-vcvr7
kubectl scale deployment mydep --replicas=5
kubectl get all
kubectl rollout pause deployment mydep
kubectl rollout resume deployment mydep
kubectl scale deployment mydep --replicas=1
kubectl get all
kubectl rollout pause deployment mydep
kubectl rollout resume deployment mydep
kubectl scale deployment mydep --replicas=10
kubectl rollout pause deployment mydep
kubectl get all
watch kubectl get all
kubectl get all
kubectl logs mydep-d5bdff64f-2ph2z
kubectl get all
kubectl rollout resume deployment mydep
kubectl scale deployment mydep --replicas=1
kubectl get all
kubectl rollout pause deployment mydep
kubectl rollout resume deployment mydep
kubectl scale deployment mydep --replicas=100
kubectl rollout pause deployment mydep
kubectl get all
kubectl scale deployment mydep --replicas=1
kubectl get all
kubectl rollout resume deployment mydep 
kubectl get all
kubectl delete -f deploy.yaml 
kubectl get all
kubectl config view
kubectl delete namespace prac1
kubectl delete namespace prac1 --force=true
kubectl get all
kubectl delete -f deploy.yaml --now
kubectl delete namespace prac1
kubectl delete namespace prac1 --now
kubectl get all
kubectl delete pod mydep-d5bdff64f-zgb8n
s
ls
kubectl create -f deploy.yaml 
exit
kubectl get all
kubectl delete namespace prac1
kubectl delete pod mydep-d5bdff64f-vmdqh
kubectl get all
kubectl delete namespace prac1
kubectl get all
kubectl delete namespace prac1 --force=true
kubectl config view
kubectl run mypo --image=redis --port=80
kubectl create namespace prac1
kubectl run mypo --image=redis --port=80
kubectl get all
kubectl logs mypo
kubectl get all
kubectl describe pod mypo
kubectl exec pod mypo -it -- "/bin/bash -c echo $(date)"
kubectl exec mypo -it -- "/bin/bash -c echo $(date)"
kubectl exec mypo -it -- "echo $(date)"
kubectl exec mypo -it -- "/bin/bash echo $(date)"
kubectl get all
kubectl delete pod mypo
kubectl exec mypo -it -- "/bin/bash"
kubectl run mypo --image=redis
kubectl exec mypo -it -- /bin/bash
exit
ls
cd prac1/
ls
mkdir -h
mkdir config
ls
cd config
ls
vi probe.yaml
kubectl explain pod.spec.containers.livenessProbe
kubectl explain pod.spec.containers.livenessProbe --recursive
kubectl explain pod.spec.containers --recursive | grep -A10 livenessProbe
ls
vi probe.yaml 
kubectl explain pod.spec.containers.livenessProbe --recursive
vi probe.yaml 
cat probe.yaml 
kubectl create -f probe.yaml 
kubectl get pods
watch kubectl logs mypod
kubectl get all
kubectl logs mypod
kubectl describe pod mypod
kubectl exec pod mypod -it -- '/bin/bash'
kubectl get all
kubectl exec pod/mypod -it -- /bin/bash
ls
kubectl get all
kubectl delete pod mypod
ls
cat probe.yaml > probe1.yaml
ls
vi probe1.yaml 
kubectl get all
kubectl create -f probe1.yaml 
vi probe1.yaml 
kubectl create -f probe1.yaml 
ls
vi probe1.yaml 
kubectl create -f probe1.yaml 
watch kubectl describe pod mypod
kubectl describe pod mypod
kubectl get all
watch kubectl get all
kubectl describe pod mypod
kubectl get all
kubectl logs mypod
vi probe1.yaml 
kubectl apply -f probe1.yaml 
kubectl get all
kubectl logs mypod
kubectl get all
kubectl describe pod mypod
kubectl delete -f probe1.yaml 
kubectl create -f probe1.yaml 
kubectl describe pod mypod
watch kubectl describe pod mypod
vi probe1.yaml 
kubectl delete -f probe1.yaml 
kubectl create -f probe1.yaml 
watch kubectl describe pod mypod
kubectl get all
kubectl logs mypod
kubectl get all
watch kubectl logs mypod
kubectl delete -f probe1.yaml 
ls
cat probe.yaml 
cat probe1.yaml 
ls
cd ..
ls
mkdir initcont
cd int
cd initcont/
ls
vi initcont.yaml
ls
kubectl create -f initcont.yaml 
kubectl describe pod mypod
kubectl exec pod mypod -it -- /bin/bash
kubectl exec mypod -it -- /bin/bash
kubectl exec mypod -c=myinit -it -- /bin/bash
kubectl get all
kubectl describe pod mypod
kubectl get all
kubectl delete -f initcont.yaml 
ls
cd ..
ls
mkdir volumes
ls
cd volumes/
ls
cd ..
ls
cd ..
ls
exit
kubectl get all
exit
sudo service vsftpd status
service ftp status
service scp status
scp -help
ls
scp -r root@10.0.0.1:/root/ckad 
pwd
scp -r root@10.0.0.1:/root/ckad /root
scp -r root@172.18.170.105:/root/ckad /root
scp -r vetri@172.18.170.105:/root/ckad /root
sudo ufw allow 21
sudo ufw allow 22
scp -r vetri@172.18.170.105:/root/ckad /root
ifconfig
hostname -I | awk '{print $1}'
ip addr (ip a)
ifconfig -a
cls
clear
ls
cd nfs
ls
cat deployment.yaml 
cat rbac.yaml 
ls
kubectl config view
kubectl config set-context --current --namespace default
kubectl config get-context
kubectl config view
cat file.txt 
rm file.txt 
ls
kubectl create -f deployment.yaml 
kubectl create -f rbac.yaml 
cat nfs-server.sh 
./nfs-client.sh 
cd /
ls
ssh root@10.0.05
ssh root@10.0.0.5
exit
ls
exit
sudo service nfs-common status
ls
cd nfs/
ls
cat nfs-client.sh 
sudo service nfs-common start
sudo apt install nfs-common
showmount -e 10.0.0.5
kubectl get all
ls
kubectl create -f sc-silver.yaml 
kubectl get sc
kubectl explain sc silver
kubectl describe sc silver
kubectl create -f pvc-silver.yaml 
kubectl get pvc
kubectl describe pvc silver-claim
ls
kubectl delete -f pvc-silver.yaml 
rm /persistentvolumes/
rm -h
rm --help
rm -d /persistentvolumes/
ls /
ls
kubectl create -f pvc-silver.yaml 
kubectl describe pvc pvc-silver
kubectl get pvc
kubectl describe pvc silver-claim
ls /
exit
ls
cd nfs/
kubectl delte -f ./
kubectl delte -f 
kubectl delete -f ./
kubectl create -f ./
ls
kubectl describe sc silver
kubectl describe pvc silver-claim
ls /
exis
kubectl delete -f ./
exit
ls
cd nfs
ls
showmount -e 10.0.0.5
cd ..
ls
cd prac
cd prac1/
ls
cd volumes/
ls
kubectl api-resources | grep pv
vi persistantVolume.yaml
ls
kubectl explain pv.spec --recursive
ls
vi persistantVolume.yaml 
nano persistantVolume.yaml 
vi persistantVolume.yaml 
showmount -e 10.0.0.5
vi persistantVolume.yaml 
kubectl create -f persistantVolume.yaml 
vi persistantVolume.yaml 
kubectl create -f persistantVolume.yaml 
vi persistantVolume.yaml 
kubectl create -f persistantVolume.yaml 
vi persistantVolume.yaml 
kubectl create -f persistantVolume.yaml 
kubectl describe pv myvol
vi persistantVolumeClaim.yaml
kubectl explain pv.spec | grep volume -A10
kubectl explain pv.spec --recursive | grep volume -A10
kubectl explain pvc.spec --recursive | grep volume -A10
kubectl explain pvc.spec.volume --recursive
kubectl explain pvc.spec.volumeName --recursive
kubectl explain pvc.spec --recursive
vi persistantVolumeClaim.yaml 
vi persistantVolume.yaml 
ls
kubectl get pv
kubectl get all
kubectl create -f persistantVolumeClaim.yaml 
kubectl api-resources | grep volume
vi persistantVolumeClaim.yaml 
kubectl create -f persistantVolumeClaim.yaml 
kubectl get pvc
kubectl get pvc myvolclaim -o yaml
vi podVol.yaml
ls
kubectl get pvc
vi podVol.yaml 
kubectl explain pod.spec.volumes --recursive
vi podVol.yaml 
ls
kubectl create -f podVol.yaml 
vi podVol.yaml 
kubectl create -f podVol.yaml 
vi podVol.yaml 
kubectl create -f podVol.yaml 
vi podVol.yaml 
kubectl create -f podVol.yaml 
kubectl logs podvol
kubectl get pods
vi podVol.yaml 
kubectl get pods
kubectl delete pod podvol
vi podVol.yaml 
kubectl create -f podVol.yaml 
kubectl get pod 
kubectl describe pod podvol
watch kubectl describe pod podvol
kubectl delete -f podVol.yaml 
vi podVol.yaml 
kubectl create -f podVol.yaml 
kubectl describe pod podvol
kubectl delete -f podVol.yaml 
vi podVol.yaml 
kubectl get pvc
kubectl get sc
vi podVol.yaml 
kubectl create -f podVol.yaml 
kubectl describe pod podvol
watch kubectl describe pod podvol
vi podVol.yaml 
kubectl delete -f podVol.yaml 
kubectl create -f podVol.yaml 
watch kubectl describe pod podvol
kubectl get pods
kubectl logs podvol
kubectl exec podvol -it -- \bin\bash
kubectl exec podvol -it -- "\bin\bash"
kubectl exec podvol -it -- \bin\bash
kubectl describe podvol
kubectl describe pod podvol
kubectl exec podvol -it -- 'cat logs.txt'
kubectl exec pod podvol -it -- 'cat logs.txt'
kubectl exec podvol -it -- 'cat logs.txt'
kubectl exec podvol -it -- /bin/bash
kubectl delete -f podVol.yaml 
kubectl create -f podVol.yaml 
kubectl exec podvol -it -- /bin/bash
kubectl get all
kubectl delete pod podvol
vi podVol.yaml 
ls
vi podVol.yaml 
kubectl create -f podVol.yaml 
kubectl get pods
watch kubectl describe pod podvol
watch kubectl logs podvol
kubectl expose pod podvol --port=8080 --type=NodePort
kubectl get all
curl 10.111.141.52:8080/data/push?counter=5
kubectl describe service podvol
kubectl describe pod podvol
kubectl get all
kubectl describe service podvol
kubectl create endpoints --help
kubectl endpoints --help
kubectl expose --help
kubectl get all
kubectl describe service podvol
kubectl delete service podvol
kubectl describe pod podvol
kubectl delete pod podvol
vi podVol.yaml 
kubectl get pv
kubectl create -f podVol.yaml 
kubectl get all
kubectl logs podvol
watch kubectl logs podvol
kubectl expose pod podvol --port=8080 --type=NodePort --name=podvolser
kubectl get all
curl 10.99.226.3:8080/file/push?counter=5
kubectl logs podvol
curl 10.99.226.3:8080/file/push?counter=5
kubectl logs podvol
curl 10.99.226.3:8080/file/push?counter=5
kubectl logs podvol
kubectl delete -f podVol.yaml 
kubectl create -f podVol.yaml 
kubectl logs podvol
curl 10.99.226.3:8080/file/push?counter=5
kubectl delete service podvolser
kubectl get all
kubectl expose pod podvol --port=8080 --type=NodePort 
curl 10.99.226.3:8080/file/push?counter=5
kubectl get all
curl 10.98.220.105:8080/file/push?counter=5
kubectl logs podvol
curl 10.98.220.105:8080/file/push?counter=5
kubectl logs podvol
exit
showmount -e 10.0.0.5
kubectl get all
ls
cd prac1/
ls
cd volumes/
ls
kubectl delete -f ./
ls
kubectl get all
kubectl delete service podvol
kubectl get namespace
kubectl config set-context --current --namespace=prac1
ls
kubectl config get-context
kubectl config --help
kubectl config get-contexts
kubectl config set-context --namespace=default --current
ls
showmount -e 10.0.0.5
man nfs
ls
cd ..
ls
cd nfs
ls
kubectl create -f ./
kubectl delete -f volume.yaml 
kubectl get pvc
kubectl describe silver-claim
kubectl describe pvc silver-claim
cd ..
ls
cd nfs
cd ..
cd prac1
ls
cd volumes/
ls
vi podVol.yaml 
kubectl create -f podVol.yaml 
kubectl expose pod podvol --port=8080 --type=NodePort
kubectl get all
curl 10.104.20.219:8080/file/push?counter=5
kubectl logs podvol
curl 10.104.20.219:8080/file/push?counter=5
kubectl logs podvol
curl 10.104.20.219:8080/file/push?counter=5
kubectl logs podvol
curl 10.104.20.219:8080/file/push?counter=5
kubectl logs podvol
ls
kubectl delete -f podVol.yaml
kubectl delete service podvol
kubectl create -f podVol.yaml 
kubectl expose pod podvol --type=NodePort --port=8080
kubectl get all
curl 10.109.58.12:8080/file/push?counter=5
kubectl logs podvol
kubectl get all
cd ..
ls
cd nfs
ls
kubectl delete -f ./
cd ..
ls
cd nfs
ls
cd ..
ls
cd prac1/
ls
cd volumes/
ls
kubectl get all
kubectl delete pod podvol
kubectl delete service podvol
ls
vi podVol.yaml 
vi persistantVolume.yaml 
vi persistantVolumeClaim.yaml 
vi podVol.yaml 
ls
ls /
kubectl run pod mypod --image=vetriraju/java:counter --image-pull-policy=Always --port=8080
kubectl logs mypod
kubectl logs pod
kubectl delete pod pod
ls
cat podVol.yaml 
showmount -e 10.0.0.5
kubectl create -f ./
kubectl get pvc
kubectl expose pod podvol --port=8080 --type=NodePort
kubectl get all
cat podVol.yaml 
curl 10.98.8.222:8080/efile/push?counter=5
kubeclt describe service podvol
kubectl describe service podvol
kubectl delete service podvol
kubectl get all
kubectl describe podvol
kubectl describe pod podvol
kubectl delete -f podVol.yaml 
vi podVol.yaml 
cat persistantVolumeClaim.yaml 
vi podVol.yaml 
kubectl create -f podVol.yaml 
kubectl get all
kubectl describe pod podvol
kubectl delete -f podVol.yaml 
vi podVol.yaml 
kubectl create -f podVol.yaml 
kubectl get all
kubectl expose podvol --port=8080 --type=NodePort
kubectl expose pod podvol --port=8080 --type=NodePort
kubectl describe service podvol
kubectl get all
curl 10.97.139.37:8080/nfile/push?counter=5
kubectl logs podvol
curl 10.97.139.37:8080/nfile/push?counter=5
kubectl logs podvol
curl 10.97.139.37:8080/nfile/push?counter=5
kubectl logs podvol
kubectl delete pod podvol
kubectl delete service podvol
kubectl create -f podVol.yaml 
kubectl expose pod podvol --port=8080 --type=NodePort
kubectl get all
curl 10.96.190.235:8080/nfile/data?counter=5
kubectl describe service podvol
curl 10.96.190.235:8080/nfile/data?counter=5
kubectl describe pod podvol
kubectl logs podvol
kubectl delete -f podVol.yaml 
kubectl delete service podvol
kubectl create -f podVol.yaml 
kubectl get all
kubectl expose pod podvol --port=8080 --type=NodePort
kubectl get all
curl 10.97.58.77:8080/nfile/push?counter=5
kubectl describe pod podvol
kubectl logs podvol
ls
kubectl explain pvc.selector 
kubectl explain pvc.selectors 
kubectl explain pvc | grep selector -A10
kubectl explain pvc
kubectl explain pvc.spec.selector
kubectl delete -f ./
ls
cd ..
ls
cat portMapping.yaml 
mkdir config
cd config/
ls
cd ..
ls
mv config probes
ls
cd probes/
ls
mkdir configs
ls
rm -d configs/
ls
cd ..
ls
mkdir configs
ls
cd configs/
ls
kubectl api-resources | grep configMap
kubectl api-resources | grep configmap
vi conf.yaml
ls
cd prac1/
ls
cd configs/
ls
vi conf.yaml
kubectl create -f conf.yaml 
vi podconf.yaml
cat conf.yaml 
vi podconf.yaml 
kubectl create -f podconf.yaml
kubectl get all
kubectl describe confpod
kubectl describe pod confpod
kubectl get all
kubectl delete pod confpod
ls
cat podconf.yaml 
vi podconf.yaml 
kubectl get all
kubectl delete pod podvol
kubectl create -f podconf.yaml 
kubectl get all
kubectl describe pod confpod
kubectl get all
kubectl logs confpod
kubectl get all
kubectl delete pod podvol
kubectl create -f podconf.yaml 
kubectl delete pod confpod
kubectl create -f podconf.yaml 
kubectl get all
kubectl exec pod confpod -it \bin\bash
kubectl exec confpod -it \bin\bash
kubectl exec confpod -it -- \bin\bash
kubectl exec pod confpod -it -- \bin\bash
kubectl get all
ls
vi podconf.yaml 
kubectl create -f podconf.yaml 
kubectl get all
kubectl describe pod confpod
kubectl delete -f podconf.yaml 
vi podconf.yaml 
ls
kubectl create -f podconf.yaml 
kubectl get all
kubectl logs pod confpod
kubectl logs confpod
kubectl get all
kubectl delete pod/confpod
vi podconf.yaml 
ls
kubectl create -f podconf.yaml 
kubectl get all
kubectl describe pod confpod
kubectl logs confpod
exit
kubectl get all
kubectl delete service podvol
kubectl delete pod confpod
ls
cd prac1/
ls
kubectl context view
kubectl config view
kubectl config set-context --current --namespace prac1
ls
cd configs/
ls
vi podconf.yaml 
ls
kubectl create -f conf.yaml 
kubectl create -f podconf.yaml
kubectl get all
kubectl logs confpod
kubectl get all
kubectl delete -f ./
ls
cat conf.yaml 
ls
vi podconf.yaml 
kubectl create -f conf.yaml 
kubectl describe configmap conf
ls
kubectl create -f podconf.yaml 
kubectl get all
kubectl describe pod confpod
vi podconf.yaml 
ls
vi podenvconf.yaml
ls
kubectl create -f conf.yaml 
cat conf.yaml 
kubectl delete -f podconf.yaml 
kubectl create -f podenvconf.yaml 
vi podenvconf.yaml 
kubectl create -f podenvconf.yaml 
vi podenvconf.yaml 
kubectl create -f podenvconf.yaml 
kubectl configMap.spec
kubectl ConfigMap.spec
kubectl explain ConfigMap.spec
kubectl explain pod.spec.env
kubectl explain pod.spec.
vi podenvconf.yaml 
ls
kubectl explain pod.spec.containers.env
vi podenvconf.yaml 
kubectl create -f podenvconf.yaml 
kubectl get all
kubectl describe pod envpod
kubectl logs envpod
kubectl get all
vi podenvconf.yaml 
kubectl apply -f podenvconf.yaml 
kubectl delete -f podenvconf.yaml 
kubectl create -f podenvconf.yaml 
kubectl get all
kubectl logs envpod
vi podconf.yaml 
kubectl delete -f ./
kubectl create -f conf.yaml 
cat podconf.yaml 
kubectl create -f podconf.yaml 
kubectl delete -f podconf.yaml 
vi podconf.yaml 
ls
vi podconf.yaml 
kubectl create -f podconf.yaml 
kubectl get all
kubectl delete -f podconf.yaml 
vi podconf.yaml 
vi test.yaml
nano test.yaml
ls
cat test.yaml 
vi test.yaml 
kubectl create -f test.yaml 
vi test.yaml 
kubectl create -f test.yaml 
kubectl get all
cat test.yaml 
kubectl delete pod myapp -n default
vi test.yaml 
kubectl create -f test.yaml 
kubectl get all
kubectl delete -f test.yaml 
vi test.yaml 
kubectl create -f test.yaml 
kubectl get all
kubectl exec pod myapp -it -- /bin/bash
kubectl exec myapp -it -- /bin/bash
kubectl delete -f test.yaml 
vi test.yaml 
ls
vi podconf.yaml 
vi test.yaml 
kubectl create -f test.yaml 
vi test.yaml 
kubectl create -f test.yaml 
kubectl get all
kubectl delete -f test.yaml 
vi test.yaml 
kubectl create -f test.yaml 
kubectl get all
kubectl delete -f test.yaml 
vi test.yaml 
kubectl create -f test.yaml 
kubectl get all
cat podconf.yaml 
vi podenvconf.yaml 
ls
kubectl delete -f test.yaml 
vi podconf.yaml 
kubectl create -f podconf.yaml 
kubectl get all
kubectl exec confpod -it -- /bin/bash
vi podenvconf.yaml 
exit
ls
cd prac1
ls
cd configs
ls
kubectl get all
kubectl delete pod confpod
cd..
cd ..
ls
mkdir jobs
ls
cat resourcePod.yaml 
cd jobs
ls
kubectl api-resources | grep jobs
vi jobs.yaml
kubectl create job --help
ls
kubectl create -f jobs.yaml 
vi jobs.yaml 
kubectl create -f jobs.yaml 
kubectl explain job.spec
vi jobs.yaml 
kubectl create -f jobs.yaml 
vi jobs.yaml 
kubectl create -f jobs.yaml 
kubectl get all
kubectl describe pod myjob-r9rjw
kubectl get all
watch kubectl describe pod myjob-r9rjw
watch kubectl logs myjob-r9rjw
kubectl get all
watch kubectl logs myjob-r9rjw
watch kubectl logs myjob-jdg5b
kubectl get all
exit
ls
cd prac1/
ls
cd jobs
ls
kubectl get all
kubectl delete -f jobs.yaml 
ls
kubectl get all
vi jobs.yaml 
kubectl explain job.spec --recursive
kubectl explain job.spec --recursive | grep -A10 -B10 parallel
vi jobs.yaml 
kubectl create -f jobs.yaml 
kubectl get all
watch kubectl get all
kubectl delete job myjob
kubectl explain job.spec.backoffLimit
vi jobs.yaml 
kubectl create -f jobs.yaml 
watch kubectl get all
ls
kubectl get all
kubectl delete job myjob
ls
vi jobs.yaml 
ls
kubectl create -f jobs.yaml 
vi jobs.yaml 
kubectl create -f jobs.yaml 
watch kubectl get all
s
ls
vi jobs.yaml 
vi cronjob.yaml
kubectl explain cronjob.spec --recursive
vi cronjob.yaml 
ls
kubectl create -f cronjob.yaml 
kubectl api-resources | grep cron
vi cronjob.yaml 
kubectl create -f cronjob.yaml 
vi co
vi cronjob.yaml 
kubectl explain cronjob.spec.jobTemplate --recursive | grep temp
kubectl explain cronjob.spec.jobTemplate --recursive | grep -A10 -B10 temp
vi cronjob.yaml 
ls
kubectl create -f cronjob.yaml 
vi co
vi cronjob.yaml 
kubectl explain CronJob.spec --recursive | grep -A10 -B10 jobTemplate
kubectl explain CronJob.spec --recursive | grep -A30 -B10 jobTemplate
kubectl explain CronJob.spec --recursive | grep -A50 -B10 jobTemplate
vi cronjob.yaml 
kubectl create -f cronjob.yaml 
vi cronjob.yaml vi cronjob.yaml 
vi cronjob.yaml 
kubectl create -f cronjob.yaml 
vi cronjob.yaml 
kubectl explain cronjob.spec.jobTemplate --recursive | grep -A10
kubectl explain cronjob.spec --recursive | grep -A10 jobTemplate
kubectl explain cronjob.spec --recursive | grep -A20 jobTemplate
kubectl explain cronjob.spec --recursive | grep -A30 jobTemplate
kubectl explain cronjob.spec --recursive | grep -A40 jobTemplate
vi cronjob.yaml 
kubectl create -f cronjob.yaml 
vi cronjob.yaml 
ls
kubectl create -f cronjob.yaml 
watch kubectl get all
kubectl delete -f cronjob.yaml 
vi cronjob.yaml 
exit
kubectl get all
kubectl delete job myjob
kubectl get all
exit
ls
cd ingress/
ks
ls
cat ingress
cat ingress.yaml 
cat ing.yaml 
ls
vi deployment.yaml 
cat ingressInstall.yaml 
LS
ls
cat service.yaml 
ls
vi services.yaml 
exit
sudo apt install helm --classic
sudo apt install helm
sudo apt update
sudo snap install helm --classic
current shell
search helm --help
helm search --help
exit
ls
cd helm
mkdir helm
ls
cd helm
ls
helm create myhelm
helm search myhelm
helm history myhelm
ls
ls myhelm/
cat Chart.yaml
ls
cd he
ls
cd myhelm/
ls
cat Chart.yaml 
ls
cd ..
exit
helm search --help
helm search
helm search repo
ls
cd helm
ls
rm -rf myhelm/
ls
helm create myhelm
ls
cd myhelm/
ls
cat Chart.yaml 
ls
cat values.yaml 
cat values.yaml | more
ls
cd templates/
ls
cat deployment.yaml 
ls
rm *.yaml
ls
rm No
rm NOTES.txt 
rm _helpers.tpl 
ls
vi mydeployment.yaml
kubectl explain pod.spec.containers.livenessprobe --recursive
kubectl explain pod.spec.containers.livenessProbe --recursive
ls
vi mydeployment.yaml 
ls
kubectl create -f mydeployment.yaml --dry-run=client -o yaml
vi mydeployment.yaml 
cat mydeployment.yaml 
cd ..
ls
vi values.yaml 
vi templates/mydeployment.yaml 
vi values.yaml 
vi templates/mydeployment.yaml 
vi values.yaml 
cd templates/
ls
cat mydeployment.yaml 
cd ..
ls
helm lint .
vi templates/mydeployment.yaml 
helm lint .
vi templates/mydeployment.yaml 
helm lint .
ls
cd templates/
ls
cd tests/
ls
cat test-connection.yaml 
rm test-connection.yaml 
cd ..
helm lint .
vi templates/mydeployment.yaml 
helm lint .
cd charts/
ls
kubectl create configMap --help
kubectl create configMap myconf --dry-run=client -o yaml > myconf.yaml
kubectl create configMap --dry-run=client -o yaml > myconf.yaml
kubectl create configmap myconf --dry-run=client -o yaml > myconf.yaml
ls
vi myconf.yaml 
cd ..
ls
vi values.yaml 
vi templates/mydeployment.yaml 
helm lint .
ls
cd  charts
ls
kubectl create -f myconf.yaml --dry-run=client - yaml
kubectl create -f myconf.yaml --dry-run=client -o yaml
vi myconf.yaml 
mv myconf.yaml ../templates/
ls
cd ..
ls
cd templates/
ls
cd ..
helm lint .
cd templates/
ls
vi myconf.yaml 
cd ..
helm lint .
ls
cd templates/
ls
cd ..
ls
vi Chart.yaml 
cd templates/
ls
vi myconf.yaml 
cd ..
ls
helm lint .
ls
cd ..
ls
helm create testchart
ls
cd testchart/
ls
cd templates/
ls
vi hel
cat _helpers.tpl 
ls
cat _helpers.tpl | more
ls
cp _helpers.tpl ../../myhelm/templates/
cd ..
;s
ls
cd myhelm/
ls
cd templates/
ls
rm myconf.yaml 
cd ..
ls
helm lint .
ls
cd templates/
ls
vi _helpers.tpl 
cd ..
helm lint .
cd ..
ls
mkdir test
ls
cd test
ls
helm create myhelm
ls
cd myhelm/
ls
cd templates/
ls
rm ..
rm ../../../myhelm/templates/_helpers.tpl 
cp _helpers.tpl ../../../myhelm/templates/_helpers.tpl 
cd ../../../myhelm/templates/
ls
cd ..
ls
helm lint .
cd templates/
ls
vi _helpers.tpl 
cd ..
ls
cat values.yaml 
cat values.yaml | more
ls
cd templates/
ls
vi _helpers.tpl 
cd ..
ls
cat Chart.yaml 
vi Chart.yaml 
helm lint .
cd templates/
ls
vi mydeployment.yaml 
cd ..
helm lint .
helm template myhelm
helm template .
helm package --help
helm package .
ls
helm release --help
helm install --help
ls
helm install myhelmrel myhelm-0.1.0.tgz 
helm status myhelmrel
kubectl get all
kubectl expose deployment myhelmrel --port=80 --type=NodePort
kubectl get all
curl 10.110.94.150:80
kubectl delete service myhelmrel
helm uninstall myhelmrel
kubectl get all
ls
cd templates/
ls
exit
