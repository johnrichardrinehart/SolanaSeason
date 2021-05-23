# Postgres

## Overview
The `postgres` instance that's a running on `atkuila` is running inside `docker` 
spun up by `docker-compose` from within `/opt/redash`. The `setup` script inside
of `redash-setup` was used to generate the credentials necessary to communicate
with the `postgres` instance (and the various other services running inside of 
the `redash` network set up by `docker-compose`).

## Migrations
The schema for the `postgres` instance is managed in software using 
[`migrate`](https://github.com/golang-migrate/migrate). This exists 
on the filesystem of `atkuila` (`/usr/bin/migrate`). You can update/downdate
the schema by executing something like 

    source /opt/redash/env
    migrate -database "postgresql://postgres:${POSTGRES_PASSWORD}@localhost:15432/example?sslmode=disable" -path . up # from the root of the repo

You can inspect `migrate -h` for more usage instructions.
