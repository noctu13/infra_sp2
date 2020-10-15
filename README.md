# API YAMDB

An application that implements the API for YAMDB running in Docker containers.
YAMDB is site about cinema with the possibility of rating and review.

## Getting Started

Download [Docker Desktop](https://www.docker.com/products/docker-desktop) for Mac or Windows. [Docker Compose](https://docs.docker.com/compose) will be automatically installed. On Linux, make sure you have the latest version of [Compose](https://docs.docker.com/compose/install/).

## Enviroment settings

specify the following environment variables in /code/.env
```
SECRET_KEY - set your own key
DB_ENGINE=django.db.backends.postgresql
DB_NAME=postgres
DB_HOST=db
DB_PORT=5432
```
See details [Django settings: DATABASES](https://docs.djangoproject.com/en/3.1/ref/settings/#std:setting-DATABASES)
```
POSTGRES_USER=postgres
POSTGRES_PASSWORD - set your own password
```
See details [Postgres: Environment Variables](https://hub.docker.com/_/postgres)

Run in this directory:
```
docker-compose up
```
The app will be running at [http://localhost:8000](http://localhost:8000)