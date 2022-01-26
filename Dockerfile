# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:20d5b519920fbc0009e2560418b291c69b69155a524db88525368bce6b712465
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs http://localhost || false
