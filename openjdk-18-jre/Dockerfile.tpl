###
# Do not edit the generated Dockerfile
###

# hadolint ignore=DL3006
FROM "${BASE_IMAGE}"

RUN apt-get update && \
    apt-get -y install --no-install-recommends openjdk-18-jre-headless="${OPENJDK_18_JRE_VERSION}" && \
    rm -rf /var/lib/apt/lists/*

### Runtime information and not relevant at build time
ENV JAVA_HOME="/usr/lib/jvm/java-18-openjdk-amd64"

LABEL org.opencontainers.image.source="${VCS_SOURCE}" \
      org.opencontainers.image.revision="${VCS_REVISION}" \
      org.opencontainers.image.vendor="Labmonkeys Space" \
      org.opencontainers.image.authors="ronny@no42.org" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.java.version="${OPENJDK_18_JRE_VERSION}"
