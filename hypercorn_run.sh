#!/bin/sh
export VERBOSE_VALIDATION="on"
export PG_CONNECT="dbname=postgres user=postgres host=127.0.0.1"
WORK=${WORKERS:-4}
# S_NAME=${SERVER_NAME:-leontinoi} # --server-name "$S_NAME" 
#hypercorn -w "$WORK" -k asyncio --statsd-host localhost -c ./hypercorn.toml asgi:api:app
hypercorn -c ./hypercorn.toml asgi:api:app
