# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:e9712bdfa40c19cc2cee4f06e5b1215138926250165e26fe69822a9ddc525eaf
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
