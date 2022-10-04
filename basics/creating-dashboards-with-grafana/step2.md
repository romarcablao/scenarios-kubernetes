Once verified, access [Grafana]({{TRAFFIC_HOST1_80}}).

Login using the following creds:
username: admin
password: admin

[Add Prometheus as datasource]({{TRAFFIC_HOST1_80}}/datasources)  
- URL: http://prometheus:9090
- Enable Basic Auth and use the following details:
    - username: admin
    - password: admin
- Click "Save and Test"