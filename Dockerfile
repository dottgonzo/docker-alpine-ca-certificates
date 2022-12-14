FROM alpine as certs
RUN apk update && apk add ca-certificates

FROM busybox
CMD cp /etc/ssl/certs /dest/
COPY --from=certs /etc/ssl/certs /etc/ssl/certs
