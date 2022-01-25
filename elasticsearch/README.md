fluentd 

```bash
docker run -itd --rm -p 24224:24224 -v fluented:/fluentd/log fluent/fluentd:v1.14-debian-1
```