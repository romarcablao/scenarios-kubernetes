Clone the repository. Feel free to navigate through the code. This repository includes grafana and prometheus setup.
```
git clone https://github.com/thecloudspark/prometheus-and-grafana.git
cd prometheus-and-grafana
```{{execute}}


Run docker-compose up to spin up the containers
```
docker-compose up -d
```{{execute}}

Check if all containers are running
```
docker ps
```{{execute}}  

You should be able to see the following containers running:  
- proxy
- node-exporter
- prometheus
- grafana  