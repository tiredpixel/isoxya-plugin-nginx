# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:f7cd562e1b59e7868facf01c115515d694eb3d9ddd485120b325932937bf8793
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
