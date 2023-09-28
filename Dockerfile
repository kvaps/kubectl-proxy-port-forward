ARG ALPINE_IMAGE
FROM $ALPINE_IMAGE
RUN apk --no-cache add socat
ENTRYPOINT ["socat"]
