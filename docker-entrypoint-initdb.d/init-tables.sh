#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username dbuser --dbname webserver <<-EOSQL
        CREATE TABLE  weblogs (
               source varchar,
               day    date,
               status varchar(3)
               );
EOSQL



