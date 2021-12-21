# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:5f009499d94b35999aa33a3346128db7bcd9b586a98ef2095c1c70e5219c3dbf
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
