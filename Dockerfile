# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:d6bff824879402589701c4585a0bd87390899d25b91af1a91a2907a932dad375
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
