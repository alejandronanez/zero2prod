#!/usr/bin/env bash
set -x
set -eo pipefail

# Check if custom user has been set, otherwise default to 'postgres'
DB_USER=${POSTGRES_USER:=postgres}
# Check if custom password has been set, otherwise default to 'password'
DB_PASSWORD=${POSTGRES_PASSWORD:=password}
# Check if custom db has been set, otherwise default to 'newsletter'
DB_NAME=${POSTGRES_DB:=newsletter}
# Check if custom port has been set, otherwise default to '5432'
DB_PORT="${POSTGRES_PORT:=5432}"

# Launch postgres using Docker
docker run \
  -e POSTGRES_USER=${DB_USER} \
  -e POSTGRES_PASSWORD=${DB_PASSWORD} \
  -e POSTGRES_DB=${DB_NAME} \
  -p "${DB_PORT}":5432 \
  -d postgres \
  postgres -N 1000
  # ^ Increased maximum number of connections for testing purposes