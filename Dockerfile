# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:8d1aa58a57e0c481463de59ce3501a963accfba61d0ee02e0a023a1e97eb70cb
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
