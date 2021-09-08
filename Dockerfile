FROM golang:1.14.9-alpine AS builder
RUN mkdir /build
ADD app /build/
WORKDIR /build
RUN go build

FROM alpine
RUN adduser -S -D -H -h /app appuser
USER appuser
COPY --from=builder /build/helloworld /app/
WORKDIR /app
CMD ["./helloworld"]