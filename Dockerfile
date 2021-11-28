FROM golang:1.13

WORKDIR /go/src/app
COPY . .

RUN go mod init
RUN go build  -o /helloworld

CMD ["app"]