# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:17d3eb7ca95b615cb9c89c4d4493f8c1d7ab4d6cb653043382ac3d85159541d5
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
