FROM golang

WORKDIR /app

ADD . /go/src/github.com/daegren/gowiki

ADD templates templates

RUN go install github.com/daegren/gowiki

ENTRYPOINT /go/bin/gowiki

EXPOSE 8080
