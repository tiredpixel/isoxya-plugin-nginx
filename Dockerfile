# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:2e00885cea4409d159091769dd96cbfd217cdf15c7107cd83ee432a57e05572d
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
