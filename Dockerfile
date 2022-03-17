# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:93c97aab9f276fe94d627cc8d9347b89ee61bc42b2121d835096f9f0a66d14a2
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
