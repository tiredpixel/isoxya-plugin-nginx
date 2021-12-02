# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:a2e89204dfe221e0fbddcf815e5cc82c19e42a30140d536c7ebbacf8c35d17c5
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs localhost:80 || false
