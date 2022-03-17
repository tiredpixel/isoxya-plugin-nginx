# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:9ddd8cf6d01f497638130950769e279e0b669cd07d11e2bbc4ffead528c9e6e2
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
