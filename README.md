# aria2-webui-rclone
Docker build script.

## Usage
build
```bash
git clone https://github.com/xzl2021/aria2-webui-rclone.git ~/build/
docker build -t aria2-webui-rclone:latest .    # note there is a .
```
run
```bash
mkdir -p /home/aria2/config    # You can put your customized [aria.conf] & [rclone.conf] & [on-complete.sh] into this dir.
mkdir -p /home/aria2/data
docker run -d -p 6800:6800 -p 6880:80 -p 6888:8080 -v /home/aria2/config:/conf -v /home/aria2/data:/data -t aria2-webui-rclone:latest
```
