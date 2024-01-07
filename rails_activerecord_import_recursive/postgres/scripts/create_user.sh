#!/bin/bash

psql -h localhost -U postgres -c "CREATE USER ${DB_USER} PASSWORD '${DB_PASS}';" || exit 10
psql -h localhost -U postgres -c "GRANT ALL ON ALL TABLES IN SCHEMA \"public\" TO ${DB_USER};" || exit 11
psql -h localhost -U postgres -c "ALTER USER ${DB_USER} CREATEDB" || exit 12

echo "Success!"
