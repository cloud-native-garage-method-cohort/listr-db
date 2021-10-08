FROM postgres:latest

RUN mkdir -p /var/lib/postgresql

RUN groupadd non-root-postgres-group
RUN useradd non-root-postgres-user --group non-root-postgres-group

# Set user rights to allow the on-root-postgres-user 
# to access the temp folder

RUN chown -R non-root-postgres-user:non-root-postgres-group /var/lib/postgresql
RUN chmod 777 /var/lib/postgresql

# Change to non-root privilege

USER non-root-postgres
