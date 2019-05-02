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
