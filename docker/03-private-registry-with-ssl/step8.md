Deploy your registry using a Compose file
If your registry invocation is advanced, it may be easier to use a Docker compose file to deploy it, rather than relying on a specific docker run invocation. Use the following example docker-compose.yml as a template.

registry:
  restart: always
  image: registry:2
  ports:
    - 5000:5000
  environment:
    REGISTRY_HTTP_TLS_CERTIFICATE: /certs/domain.crt
    REGISTRY_HTTP_TLS_KEY: /certs/domain.key
    REGISTRY_AUTH: htpasswd
    REGISTRY_AUTH_HTPASSWD_PATH: /auth/htpasswd
    REGISTRY_AUTH_HTPASSWD_REALM: Registry Realm
  volumes:
    - /path/data:/var/lib/registry
    - /path/certs:/certs
    - /path/auth:/auth
Replace /path with the directory which contains the certs/ and auth/ directories.

Start your registry by issuing the following command in the directory containing the docker-compose.yml file:

$ docker-compose up -d