FROM golang:alpine

WORKDIR /go/src/app
RUN apk add --no-cache git
RUN go get github.com/google/webrisk
CMD /go/bin/wrserver -apikey ${APIKEY} -srvaddr 0.0.0.0:9780
