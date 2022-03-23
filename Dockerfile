# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:85f3b7a34506d74088124917360343e00c73a1b617a2371cc59fa9fa44d89a42
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
