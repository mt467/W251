#!/bin/bash
xhost + local:root
docker run \
--user=root \
--env="DISPLAY" \
--volume="/etc/group:/etc/group:ro" \
--volume="/etc/passwd:/etc/passwd:ro" \
--volume="/etc/shadow:/etc/shadow:ro" \
--volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
--name face_app --privileged --network faces -v "$PWD":/HW03 -ti ubuntu_jtx2 bash