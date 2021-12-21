# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:68bfb447b3796ecc413873d7ac8f87283b6d4a5e5beb142dacc305f62eee992c
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
