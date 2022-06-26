cd /manifests
sleep 1
ls
kubectl run fix-me --image=nginx:3
kubectl create -f nginx-deployment.yml
clear