With Istio's insight into how applications communicate, it can generate profound insights into how applications are working and performance metrics.

## Generate Load

Make view the graphs, there first needs to be some traffic. Execute the command below to send requests to the application.

`
while true; do
  curl -s https://[[HOST_SUBDOMAIN]]-80-[[KILLERCODA_HOST]].papa.r.killercoda.com/productpage > /dev/null
  echo -n .;
  sleep 0.2
done
`{{execute}}

## Access Dashboards

With the application responding to traffic the graphs will start highlighting what's happening under the covers.

## Grafana

The first is the Istio Grafana Dashboard. The dashboard returns the total number of requests currently being processed, along with the number of errors and the response time of each call.

https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/dashboard/db/istio-dashboard

As Istio is managing the entire service-to-service communicate, the dashboard will highlight the aggregated totals and the breakdown on an individual service level.
