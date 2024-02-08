FROM postgres:16-bookworm
ARG PG_GRAPHQL_VERSION=v1.4.4

RUN apt update && apt install jq curl dpkg -y

RUN curl -L https://github.com/supabase/pg_graphql/releases/download/$PG_GRAPHQL_VERSION/pg_graphql-$PG_GRAPHQL_VERSION-pg16-amd64-linux-gnu.deb --output /tmp/pg_graphql.deb && \
    dpkg -i /tmp/pg_graphql.deb

COPY install_graphql_sql.sh /docker-entrypoint-initdb.d/install_graphql_sql.sh
