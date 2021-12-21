# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:d13dca1855de09e2fe392c58a66dd73d4ff4b71da4d1720bcf3f47b48c53ca1d
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
