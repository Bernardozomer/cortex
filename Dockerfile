FROM ghcr.io/xu-cheng/texlive-alpine:20251002

WORKDIR /tex

RUN apk update && apk upgrade