#!/usr/bin/env bash

echo "Booting iigomacs..."
[ ! -d "/tmp/user" ] && mkdir /tmp/user
CURRENT_UID=0:0 docker-compose up -d --build
docker exec -it iigomacs_iigomacs_1 /bin/bash -c "cd ~ && /bin/bash"