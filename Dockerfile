# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:e48e9d28dd773886b5c4b86db4e411eedf46bb98095f5c03c3f6a167a633dcf0
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
