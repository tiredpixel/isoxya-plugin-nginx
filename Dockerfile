FROM docker.io/library/nginx@sha256:2c72b42c3679c1c819d46296c4e79e69b2616fa28bea92e61d358980e18c9751

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
