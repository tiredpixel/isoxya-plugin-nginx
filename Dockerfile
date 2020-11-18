#===============================================================================
# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:bb84ff0786cd1dbde780d84f6bf76bfdef36fe8ffa658f7f5c48e39363b4d500
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs localhost:80 || false
#===============================================================================
