# 명령어 

컨테이너 실행 
```bash
docker-compose up -d
```

로그 보기
```bash
docker-compose logs -f
```

# Issues

###  rabbitmq:3-management 이미지를 받아서 컨테이너 실행 시, management 플러그인이 실행이 안됨.


Dockerfile을 따로 만들어서 plugin 활성화 시켜주는 명령어 추가해서 빌드 시키는 방식으로 진행

```bash
RUN rabbitmq-plugins enable rabbitmq_management_agent 
RUN rabbitmq-plugins enable rabbitmq_web_dispatch
RUN rabbitmq-plugins enable rabbitmq_management
```