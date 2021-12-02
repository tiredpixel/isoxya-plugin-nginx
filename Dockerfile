# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:a036eb1972df1f80b0fbd154e1abeb3fa9e27d6dd1e1db5912315e05a11a7b28
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs localhost:80 || false
