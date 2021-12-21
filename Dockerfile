# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:366e9f1ddebdb844044c2fafd13b75271a9f620819370f8971220c2b330a9254
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
