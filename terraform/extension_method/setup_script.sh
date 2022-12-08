echo "hello from azure vm" > index.html
nohup busybox httpd -f -p 80 &