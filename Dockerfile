FROM --platform=$BUILDPLATFORM alpine:latest
RUN apk add --no-cache gawk findutils
COPY crontab /etc/crontabs/root
COPY delete-old-files /usr/local/bin/delete-old-files
CMD ["crond", "-f", "-d", "8"]