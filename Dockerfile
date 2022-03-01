# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:94c960147b1cfc74bdf43a1bd3870c4a7960cdc9f12b5709729f15d3d75ad351
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
