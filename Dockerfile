# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:5bffd60c4e362cdbcc874493f50a5cc30732f647af9aab3f625a6d13a0ceaf22
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
