FROM alpine
LABEL org.opencontainers.image.title="harness cd" \
    org.opencontainers.image.description="My awesome Docker extension" \
    org.opencontainers.image.vendor="Docker Inc." \
    com.docker.desktop.extension.api.version="0.3.0" \
    com.docker.extension.screenshots="" \
    com.docker.extension.detailed-description="" \
    com.docker.extension.publisher-url="" \
    com.docker.extension.additional-urls="" \
    com.docker.extension.changelog=""
COPY ui ui
COPY docker-compose.yaml .
COPY metadata.json .
COPY docker.svg .
COPY environment environment
COPY config config
COPY scripts scripts
COPY profile-production.yml profile-production.yml
# CMD /service -socket /run/guest-services/extension-my-harness-cd-extension.sock
# CMD  /service -socket /run/guest-services/extension-my-harness-cd-extension.sock

