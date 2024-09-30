#!/bin/sh

sudo docker compose down && sudo docker compose pull && sudo docker compose up -d && sudo docker compose logs -f --tail 10
