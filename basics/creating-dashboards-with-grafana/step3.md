In this part, we will import a dashboard from [Grafana Dashboards](https://grafana.com/grafana/dashboards)


Go to [Dashboard Import Page]({{TRAFFIC_HOST1_80}}/dashboard/import). Use the id `1860` and click load.  

You can update the name and folder. Make sure to select `Prometheus` as datasource. Lastly, click `Import`

Reference: https://grafana.com/grafana/dashboards/1860-node-exporter-full/


Run a stress test and wait for 5-10 minutes.
```
pip install stress
stress -c 2 -m 2
```{{execute}}

Explore the dashboard and check if you see metrics coming in.

Aside from prometheus, you can also add several more datasources like Tempo, Loki, etc.