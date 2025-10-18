FROM minidocks/texlive:full

WORKDIR /tex
COPY . /tex/

RUN apk update && apk upgrade