FROM alpine:3.9

ENV SUP_VERSION=0.5.3
ENV SUP_DOWNLOAD_URL=https://github.com/pressly/sup/releases/download/v${SUP_VERSION}/sup-linux64

RUN apk add --update --no-cache ca-certificates bash && \
    wget ${SUP_DOWNLOAD_URL} -O /usr/local/bin/sup && \
    chmod +x /usr/local/bin/sup
