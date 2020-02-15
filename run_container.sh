#!/bin/sh
sudo docker run --name aria2 -d -p 6800:6800 -p 6880:80 -p 6888:8080 -v /home/aria2/config:/conf -v /home/aria2/data:/data -t aria2-webui-rclone:latest
exit 0
