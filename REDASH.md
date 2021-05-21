# Redash

## Summary
Redash is a python/JS application that alows users to render SQL queries as shareable charts.

## Installation
1. `redash` sudmodule at the root of the repo.
1. `podman` used to build everything

    cd redash # submodule directory
    podman build .
    podman-compose up -d # don't detach if you want to observe the live output
1. expose ports
