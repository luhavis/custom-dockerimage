

# Create backup file

`Not include config files`
```bash
docker exec -it {{CONTAINER_NAME_OR_ID}} gitlab-backup create
```

`Backup config files`
```bash
docker exec -it {{CONTAINER_NAME_OR_ID}} tar -cvf {{BACKUP_FILE_NAME}}.tar /etc/gitlab

```

# Restore backup file
[Gitlab docs](https://docs.gitlab.com/ee/administration/backup_restore/restore_gitlab.html#restore-for-linux-package-installations)

```bash
docker exec -it {{CONTAINER_NAME_OR_ID}} gitlab-ctl stop puma
docker exec -it {{CONTAINER_NAME_OR_ID}} gitlab-ctl stop sidekiq

docker exec -it {{CONTAINER_NAME_OR_ID}} gitlab-ctl status

docker exec -it {{CONTAINER_NAME_OR_ID}} gitlab-backup restart BACKUP={{GITLAB_BACKUP_FILE_NAME(NO_EXTENSION)}}

docker restart {{CONTAINER_NAME_OR_ID}}

docker exec -it {{CONTAINER_NAME_OR_ID}} gitlab-rake gitlab:check SANITIZE=true
```

