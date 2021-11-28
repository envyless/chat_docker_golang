FROM golang:1.16-alpine

WORKDIR /app
EXPOSE 3000

COPY . .

#RUN go mod init
RUN go mod download
RUN go build  -o /chat


CMD [ "/chat" ]