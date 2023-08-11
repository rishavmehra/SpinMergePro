FROM golang:1.18-alpine as prod-stage1
LABEL MAINTAINER="Rishav Mehra <rishavmehra61@gmail.com>"
WORKDIR /go/src
COPY . .
RUN rm -rf uploads/
RUN go get -d
RUN go build -o rotator-executable

FROM alpine:3.16.1 as prod
RUN apk add qpdf
LABEL MAINTAINER="Rishav Mehra <rishavmehra61@gmail.com>"
WORKDIR /go/src
COPY --from=prod-stage1 /go/src .
RUN rm -f go.mod main.go Dockerfile .dockerignore
CMD ["./rotator-executable"]
EXPOSE 8081

