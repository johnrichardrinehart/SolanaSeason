# Redash

## Summary
Redash is a python/JS application that alows users to render SQL queries as shareable charts.

## Installation

    cd redash-setup # submodule for github.com/getredash/setup
    ./setup # pulls, builds the latest docker-compose specification w/ credentials in /opt/redash/env
    sudo iptables -A INPUT -p tcp --dport 5000 -j ACCEPT # expose the redash browser interface

## Relevant Connection Details
The credentials are generated as a part of the redash setup script. At the time of writing this is
stored in `/opt/redash/env` and is literally:

    PYTHONUNBUFFERED=0
    REDASH_LOG_LEVEL=INFO
    REDASH_REDIS_URL=redis://redis:6379/0
    POSTGRES_PASSWORD=3z9a0qlYY5mdenont3U0kQMuhFjXSZZ1
    REDASH_COOKIE_SECRET=0TaBIgfIXfFOx23EWF0Zx7pHhspKmsfJ
    REDASH_SECRET_KEY=ttD3LfpPkbmImOiUDhdPHDankPm3OwXy
    REDASH_DATABASE_URL=postgresql://postgres:3z9a0qlYY5mdenont3U0kQMuhFjXSZZ1@postgres/postgres

## Helpful Info

    alias psql="docker container run -it --network=redash_default postgres:9.6-alpine psql $REDASH_DATABASE_URL"

is a useful command to access a PostgreSQL shell (`psql`) where you can do some database instrospection.  Note that
the `./setup` script from `redash-setup` creates a default network called `redash_default`. In order to communicate
with the `postgres` container you will need to be attached to that network in order to communicate with the services 
(unless binding to host, in which case you'll probably need to use different/non-standard ports).

Of course, it relies on having `REDASH_DATABASE_URL` in the environment. So `source /opt/redash/env` will 
be helpful there.


You can bring DOWN all of the Redash infrastructure by

    sudo sh -c "docker container ls -aq | xargs -I{} docker stop {}"


You can bring UP all of the Redash infrastructure by

    sudo sh -c "docker container ls -aq | xargs -I{} docker start {}"

NOTE: The above command may start other unrelated services, too.
