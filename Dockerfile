FROM docker.io/library/nginx@sha256:790711e34858c9b0741edffef6ed3d8199d8faa33f2870dea5db70f16384df79

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
