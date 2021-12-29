# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:12bf458a46917a3626b79228424d4efbfa78eaa4d9dfd03da13104303cffea27
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
