# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:d8b14cdf48691a445ecc15123c0db96860693131a25f844d2e910096974ac101
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
