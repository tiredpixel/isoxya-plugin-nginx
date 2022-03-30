# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:2275af0f20d71b293916f1958f8497f987b8d8fd8113df54635f2a5915002bf1
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
