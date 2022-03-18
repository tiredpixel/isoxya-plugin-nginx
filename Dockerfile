# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:9e3049eff104b703e08b67cc5c0c2e0ad1973d4b9185d8c164b7958bd283dbf3
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
