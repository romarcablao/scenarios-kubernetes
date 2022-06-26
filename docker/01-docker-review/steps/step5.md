Now let's take a look at some containers logs. This is another good way to troubleshoot container issues.

Let's run NGINX container again and look at the logs:

- `docker container run -p 80:80 -d --rm --name nginx nginx`{{exec}}
- `docker container ps`{{exec}}
- `docker container logs nginx`{{exec}}
- `docker container logs -f nginx`{{exec}}

By using the -f switch, we are now live tailing the logs. Visit the NGINX page and you will see the logs update.