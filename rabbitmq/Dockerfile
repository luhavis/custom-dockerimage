FROM rabbitmq:3-management-alpine

ENV LC_ALL C.UTF-8

RUN apk update && apk add tzdata
RUN cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime
RUN echo "Asia/Seoul" > /etc/timezone


RUN rabbitmq-plugins enable rabbitmq_management_agent 
RUN rabbitmq-plugins enable rabbitmq_web_dispatch
RUN rabbitmq-plugins enable rabbitmq_management

EXPOSE 5672 15672 61613 15674
