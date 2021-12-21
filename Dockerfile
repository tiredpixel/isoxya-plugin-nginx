# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:18d4060f8c221c35cde8153e9cb05b225ea8e05ed750514e9271bbcc36c61bae
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
