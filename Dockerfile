# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:4a49b1fbd5f544755121dee04f7f717416c21ae1bf5ef862aa34fbffbb9e434f
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs localhost:80 || false
