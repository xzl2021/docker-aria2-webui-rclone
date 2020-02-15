FROM alpine:edge

MAINTAINER xzl2021 <jack777@xujinkai.net>

RUN     apk add --no-cache --update bash aria2 darkhttpd && \
        mkdir -p /conf && \
        mkdir -p /data && \
        mkdir /files && \
        wget --no-check-certificate -qO /files/aria2.conf https://github.com/xzl2021/aria2-ariang-rclone/raw/master/files/aria2.conf && \
        wget --no-check-certificate -qO /files/on-complete.sh https://github.com/xzl2021/aria2-ariang-rclone/raw/master/files/on-complete.sh && \
        wget --no-check-certificate -qO /files/start.sh https://github.com/xzl2021/aria2-ariang-rclone/raw/master/files/start.sh && \
        wget --no-check-certificate -qO /files/rclone https://github.com/xzl2021/aria2-ariang-rclone/raw/master/files/rclone && \
        wget --no-check-certificate -qO /files/AriaNg.zip https://github.com/xzl2021/aria2-ariang-rclone/raw/master/files/AriaNg.zip && \
        wget --no-check-certificate -qO /files/webui-aria2.zip https://github.com/xzl2021/aria2-ariang-rclone/raw/master/files/webui-aria2.zip && \
        mv /files/rclone /usr/local/bin/rclone && \
        chmod +x /usr/local/bin/rclone && \
        mkdir -p /webui/AriaNg/ && \
        mkdir -p /webui/webui-aria2/ && \
        unzip /files/AriaNg.zip -d /webui/AriaNg/ && \
        unzip /files/webui-aria2.zip -d /webui/webui-aria2/ && \
        rm -rf /files/AriaNg.zip /files/webui-aria2.zip && \
        chmod +x /files/start.sh

WORKDIR /
VOLUME ["/data"]
VOLUME ["/conf"]
EXPOSE 6800
EXPOSE 80
EXPOSE 8080

CMD ["/files/start.sh"]
