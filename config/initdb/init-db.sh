set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE testing;
    CREATE DATABASE production;
    CREATE DATABASE development;
EOSQL