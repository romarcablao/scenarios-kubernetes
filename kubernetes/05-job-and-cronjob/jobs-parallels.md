To create a parallel job we can use `spec.parallelism` to set how many pods we want to run in parallel and `spec.completions` to set how many job completitions we would like to achieve. 

## Create Countdown Parallel Job

Inspect the file `jobs-parallels.yaml`{{open}}.

This is the same `countdown` job we used in the previous scenario but we have added `spec.parallelism` and `spec.completions` parameters.

The job will run 2 pods in parallel until it reaches 8 completions successfully.

Create countdown parallel job:

`kubectl apply -f /manifests/jobs-parallels.yaml`{{execute}}

### Job status

Wait for a few seconds to get the 8 completions and then check the status of the job:

`kubectl get jobs`{{execute}}

You should see a similar result to the following, but if not, wait for a few more seconds and check again:

`
NAME        DESIRED   SUCCESSFUL   AGE
countdown   8         8            16s
`

This job was executed successfully 8 time by running 2 jobs in parallel.

### Job Logs

In order to see the job's logs, we need to get the job name:

`kubectl get pods -o 'jsonpath={.items[0].metadata.name}'; echo`{{execute}}

And then execute the following command to get the logs:

```
kubectl logs `kubectl get pods -o 'jsonpath={.items[0].metadata.name}'`
```{{execute}}


You will get a result like:

`
9
8
7
6
5
4
3
2
1
Perfect!
`

### Delete Job

`kubectl delete -f /manifests/jobs-parallels.yaml`{{execute}}

or 

`kubectl delete job countdown`{{execute}}
