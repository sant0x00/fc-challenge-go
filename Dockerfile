FROM golang:1.21-rc-alpine AS builer

WORKDIR /usr/share/app

COPY app /usr/share/app

FROM scratch
WORKDIR /usr/share/app
COPY --from=builer /usr/share/app .
ENTRYPOINT [ "./app" ]