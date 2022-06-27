- Publishing Ports  
Run Nginx and let Docker choose a high port:  
`docker container run -d -p 80 --name nginx-high nginx`{{execute}}
Visit https://[[KILLERCODA_URL]] or validate by [selecting the port here]({{TRAFFIC_SELECTOR}})

- Run Nginx and let Docker determine exposed ports and mapping: 
`docker container run -d -P --name nginx-auto nginx`{{execute}}
Visit https://[[KILLERCODA_URL]] or validate by [selecting the port here]({{TRAFFIC_SELECTOR}})

- Show open ports:  
`docker container ls`{{execute}}

- For communication within the network, use the exposed port.
- For communication external to the network, use the published port. 

