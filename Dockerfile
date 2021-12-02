# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:101b40d4d6fa30cc966115cc0c0244823bfa066c7f1bfe82d87f2ad5a5deab12
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs localhost:80 || false
