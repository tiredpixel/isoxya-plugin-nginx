# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:1f105601bfded0fa298d8c5efd5569f4ed3bf53dc7f4c41c691c29999550f6a3
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
