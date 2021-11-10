#===============================================================================
# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:dfef797ddddfc01645503cef9036369f03ae920cac82d344d58b637ee861fda1
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
