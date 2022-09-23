FROM alpine as certs
RUN apk update && apk add ca-certificates

FROM busybox
CMD copy /etc/ssl/certs /dest/certs
COPY --from=certs /etc/ssl/certs /etc/ssl/certs
