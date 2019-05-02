Neos Playground
==

### Github username(s)

```bash
cp _env .env
echo "IMPORT_GITHUB_PUB_KEYS=$(whoami)" >> .env
```

### Docker Setup

#### Deployment key

Make sure to configure a (personal) deployment key, so the docker container can access the repository.

Do:

```bash
ssh-keygen -t rsa -f docker/deploy_rsa -C "$(whoami) $(basename $(pwd)) deploy key" -N ""
```

#### .dev Hostname

Setup a "dev." Hostname for the docker-machine IP Address, in e.g. `/etc/hosts`:

```
192.168.99.100 dev.neos-playground.docker
```

#### Docker Compose UP

```bash
docker-compose up -d
docker-compose logs -f web
```

.. wait 'till you see the line:

```
.. NOTICE: ready to handle connections
```

The Web-Server is now ready to serve incoming requests:

<http://dev.neos-playground.docker:8081/>


### Access the Web Container via SSH

```bash
ssh -p1123 www-data@dev.neos-playground.docker
```
