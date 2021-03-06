# Base image
FROM postgres:12.4-alpine

# Expose ports
EXPOSE 5432

# Healthcheck
ADD ./docker-healthcheck.sh /usr/local/bin/docker-healthcheck
RUN chmod +x /usr/local/bin/docker-healthcheck
HEALTHCHECK CMD docker-healthcheck
