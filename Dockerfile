# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:bda57682353b360da724d84d02d73c8a8074e668f4c9cfe08a6b50dadcd89190
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
