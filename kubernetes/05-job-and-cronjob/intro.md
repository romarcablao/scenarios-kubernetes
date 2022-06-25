
This scenario provides an overview of Jobs, Init Containers and CronJobs in Kubernetes.

[Jobs resources](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/) create one or more pods and ensures that all of them successfully terminate. 

There are two types of jobs:

* **Non-parallel Job:** A Job which creates only one Pod (which is re-created if the Pod terminates unsuccessfully), and which is completed when the Pod terminates successfully.
* **Parallel jobs with a completion count:** A Job that is completed when a certain number of Pods terminate successfully. You specify the desired number of completions using the completions field. 

[Cron Jobs](https://kubernetes.io/docs/tasks/job/automated-tasks-with-cron-jobs/) create a job object, they are useful for creating periodic and recurring tasks, e.g running backups or sending emails.

[Init Containers](https://kubernetes.io/docs/concepts/workloads/pods/init-containers/) are regular containers within a pod that run before the app container and they also satisfy the following statements:

* They can run setup scripts not present in an app container - e.g prepopulate some data, waiting until a specific service is up and running and etc.
* A pod can have one or more init containers apart from app containers
* Init containers always run to completation
* Each one must complete successfully before the next one is started
* The application container won't run if any of the configured init containers will not finish the execution successfully
