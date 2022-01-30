FROM fluent/fluentd:v1.14-debian-1

USER root

RUN cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime
RUN echo "Asia/Seoul" > /etc/timezone

RUN gem install elasticsearch -v 7.10.0
RUN gem install fluent-plugin-elasticsearch -v 5.1.4

