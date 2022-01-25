# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:63156458d1c2d3d270962ee63bcb1a942ce0691aad3f41e06a4ac307416b50fe
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
