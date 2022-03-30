# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:d3e0f43ca3a8531c8e262d576ce717ea585c6cb190703ee7cccb9ade21aa7b59
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
