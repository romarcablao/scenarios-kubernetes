An [Init Container](https://kubernetes.io/docs/concepts/workloads/pods/init-containers/) is a container which is executed before the application container is started. `Init-containers` are usually used for deploying utilities or execute scripts which are not loaded and executed in the application container image.

## Create a Pod with an init container

Take a look at the file `init-container.yaml`{{open}}. 

This example runs an `init-container` which creates a `helloworld` file in a volume. The application pod will be scheduled if the `helloworld` file exist at a specific path and the pod can access it.

Create the init container:

`kubectl apply -f /manifests/init-container.yaml`{{execute}}

It could take some time until the Init container finishes the execution successfully and the application container is scheduled to run.

### Pod status

The Init container will take some time until it creates the file so you might have to check the status of the pod a couple of times:

`kubectl get pods`{{execute}}

If the pod is running, it means that the file was created succesfully and the pod can read it.
We are going to manually check that the file is at the specified path and it has the correct content:

`kubectl exec -ti happypanda -- cat /opt/workdir/helloworld `{{execute}}

You should see a result like:

`The app is running`

### Delete Pod

`kubectl delete -f /manifests/init-container.yaml`{{execute}}

or 

`kubectl delete pod happypanda`{{execute}}