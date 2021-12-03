# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:9522864dd661dcadfd9958f9e0de192a1fdda2c162a35668ab6ac42b465f0603
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs localhost:80 || false
