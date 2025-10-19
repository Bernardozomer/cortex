FROM minidocks/texlive:full

WORKDIR /tex

RUN apk update && apk upgrade