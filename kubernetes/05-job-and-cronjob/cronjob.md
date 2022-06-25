Written in a `Cron` format, a [Cron Job resource](https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/) runs a job periodically on a given schedule. These are useful for creating periodic and recurring tasks, e.g running backups or sending emails.

## Create Hello Cron Job

Take a look at the file `cronjob.yaml`{{open}}. This example create a job every minute which prints the current time and a hello message.

`kubectl apply -f /manifests/cronjob.yaml`{{execute}}

### Cron Job status

Check the status of the cronjob:

`kubectl get cronjob hello`{{execute}}

Immediatly after creating a cron job, the `LAST-SCHEDULE` column will have no value (`<none>`). This indicates that the CronJob hasn't run yet.

`
master $ kubectl get cronjob hello
NAME      SCHEDULE      SUSPEND   ACTIVE    LAST SCHEDULE   AGE
hello     */1 * * * *   False     0         <none>          8s
`
Once the `LAST-SCHEDULE` column gets a value, it indicates that the CronJobs is now scheduled to run:

`kubectl get cronjob --watch`{{execute}}

Check the cron job again, you should see that the cronjob has been scheduled at the time specified in `LAST-SCHEDULE`:

`kubectl get cronjob hello`{{execute}}

### Cron Job Logs

In order to see the job's logs, we need to know the pod's name:

`kubectl get pod -o 'jsonpath={.items[0].metadata.name}'; echo`{{execute}}

And then:

```
kubectl logs `kubectl get pod -o 'jsonpath={.items[0].metadata.name}'`
```{{execute}}

### Delete Cron Job

`kubectl delete cronjob hello`{{execute}}
