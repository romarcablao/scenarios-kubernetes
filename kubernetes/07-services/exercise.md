Create a deployment in the default namespace with the `httpd` image, name the deployment as `spcloud` and expose it as a NodePort service named `spcloud-svc`.

<br>

When you run `curl node01:<NODE_PORT>`, you should receive a response `It works!`
