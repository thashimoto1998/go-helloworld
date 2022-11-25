FROM golang:1.18-alpine

ENV ROOT=/go/src/app

WORKDIR ${ROOT}

RUN apk add --update --no-cache git alpine-sdk build-base
COPY . ${ROOT}
RUN go build -o hello-world
CMD ["./hello-world"]