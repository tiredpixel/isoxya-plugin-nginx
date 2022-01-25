# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:819e4be00b86634ce26b20f73e260e1ccf097e636b98e9728fac89fb15a52ca3
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
