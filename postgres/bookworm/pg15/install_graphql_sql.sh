psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  create extension if not exists "pg_graphql";
  select * FROM pg_extension;
EOSQL