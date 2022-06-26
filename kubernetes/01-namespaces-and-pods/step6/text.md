### A. Create namespace: `cloudnative`

### B. Create a `pod` with the following constraints:
1. Pod name: `jenkins`
2. Deploy pod in a `cloudnative` namespace
3. Add additional labels:    
    > app: jenkins  
    > company: sp  
4. Use this container image: `jenkins/jenkins:lts`
### C. [Optional] Expose the pod using a service and check if `Jenkins` is running successfully

### D. [Optional] Setup your `Jenkins` instance. YOu can check the ssh into the pod or check the logs for the admin password.
![Jenkins](../assets/jenkins.png)