FROM minidocks/texlive:small

WORKDIR /tex
COPY . /tex/

RUN apk update && apk upgrade