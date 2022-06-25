[Job resources](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/) are used to facilitate the execution of a batch job. Through Job resources, Kubernetes also supports parallel jobs which will finish executing when a specific number of successful completions is reached.

Therefore with Job resources, we can run work items such as frames to be rendered, files to be transcoded, ranges of keys in a NoSQL database to scan, and so on.

Have a look at [Jobs Api reference](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#job-v1-batch) to see how to build a job resource in Kubernetes.

Pods created by jobs are not automatically deleted. Keeping the pods around allows you to view the logs of completed jobs in order to check for potential errors. If you want to remove them, you need to do that manually.

## Create Countdown Job

Take a look at the file `job.yaml`{{open}}. 

This example creates a job which runs a bash command to count down from 10 to 1.

Notice that the field `spec.restartPolicy` allow only two values: "OnFailure" or "Never". For further information read [here](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#example-states)

> **Note:** There are situations where you want to fail a job after a number of retries. To do so, use `spec.backoffLimit` which, by defauly, is set 6.
> You can use `spec.activeDeadlineSeconds` to limit the execution time in case you want to manage the duration of a specific job. If the execution reaches this deadline, the Job and all of its Pods are terminated.

Create the countdown job:

`kubectl apply -f /manifests/job.yaml`{{execute}}

### Job status

Check the status of the job:

`kubectl get jobs`{{execute}}

### Job Logs

In order to see the job's logs we need to get the name of the Job in question:

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

`kubectl delete -f /manifests/job.yaml`{{execute}}

or 

`kubectl delete job countdown`{{execute}}