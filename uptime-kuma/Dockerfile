FROM louislam/uptime-kuma:1-alpine

ENV TZ Asia/Seoul
ENV LC_ALL C.UTF-8

RUN apk update && \
    apk add --no-cache tzdata
  

RUN cp /etc/share/zoneinfo/Asia/Seoul /etc/localtime

