# Generated with JReleaser 1.16.0 at 2025-02-16T18:45:24.233741491Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.2.3"
LABEL "org.opencontainers.image.revision"="d7a319522e4e72a2b5277e5a15bd715d557dedb6"


COPY assembly/ /

RUN unzip riot-4.2.3.zip && \
    rm riot-4.2.3.zip && \
    chmod +x riot-4.2.3/bin/riot


ENV PATH="${PATH}:/riot-4.2.3/bin"

ENTRYPOINT ["/riot-4.2.3/bin/riot"]
