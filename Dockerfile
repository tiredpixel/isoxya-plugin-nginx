# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:92a41cec180dd3cc645e5a8968d41b4aba786c4956e20020212e1d5636a7eda5
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs localhost:80 || false
