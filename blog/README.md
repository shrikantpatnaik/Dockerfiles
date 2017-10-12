# Blog / Ghost

This will install [Ghost](https://ghost.org). The container uses SQLite so an additional DB container is not required.

## Setup

You must change the url parameter in the ghost config file. you can do so by running the following command:

```sh
docker exec ghost-main sed -i 's/http:\/\/localhost:2368/https:\/\/mydomain.com/g' config.production.json
```
and then restarting the container with

```sh
docker restart ghost-main
```
