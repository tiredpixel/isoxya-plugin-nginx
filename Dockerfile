# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:99f8280d11eeaaf0cd8e0af861227cb31f65c1a67f8282fe814b843e163dc0c2
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
