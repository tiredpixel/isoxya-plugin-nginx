# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:65866b6a229e19e5e28f3d33b47acc152146bf1f480755750613ea4ec52ca0bb
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs localhost:80 || false
