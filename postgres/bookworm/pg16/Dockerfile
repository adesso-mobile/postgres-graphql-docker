FROM postgres:16-bookworm
RUN apt update && apt install jq curl dpkg -y

RUN LATEST_VERSION=$(curl --silent https://api.github.com/repos/supabase/pg_graphql/releases/latest | jq .tag_name --raw-output) && \
    curl -L https://github.com/supabase/pg_graphql/releases/download/$LATEST_VERSION/pg_graphql-$LATEST_VERSION-pg16-amd64-linux-gnu.deb --output /tmp/pg_graphql.deb && \
    dpkg -i /tmp/pg_graphql.deb

COPY install_graphql_sql.sh /docker-entrypoint-initdb.d/install_graphql_sql.sh
