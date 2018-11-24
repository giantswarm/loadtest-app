# STEP 1 build executable binary
FROM golang:alpine as builder

ENV GO111MODULE=on

RUN apk update && \
  apk add bash ca-certificates git gcc g++ libc-dev

RUN adduser -D -g '' testapp

COPY go.mod /src/testapp/
COPY go.sum /src/testapp/
WORKDIR /src/testapp/

RUN go mod download

COPY . /src/testapp/
RUN go build -o /testapp

# STEP 2 build a small image
FROM alpine

COPY --from=builder /etc/passwd /etc/passwd

COPY --from=builder /testapp /testapp
COPY data/ /data

EXPOSE 9000

USER testapp

ENTRYPOINT ["/testapp"]
