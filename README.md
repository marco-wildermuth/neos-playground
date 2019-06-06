Neos Playground
==

### Github username(s)

Make sure you have the global ENV var `GITHUB_USERNAME` configured with your
Github username. You can also use `.env` for that:

```bash
echo "GITHUB_USERNAME=MY_GITHUB_USERNAME" > .env
```

OR

```bash
export GITHUB_USERNAME=MY_GITHUB_USERNAME
```

### Docker Setup

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

<http://dev.neos-playground.docker:8080/>


### Access the Web Container via SSH

```bash
ssh -p1122 www-data@dev.neos-playground.docker
```
