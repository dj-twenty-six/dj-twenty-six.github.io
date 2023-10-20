# DJ26 WEB APP

## docker build
- https://hub.docker.com/_/httpd
```bash
$ docker build -t my-apache2 .
$ sudo docker images
REPOSITORY   TAG       IMAGE ID       CREATED         SIZE
my-apache2   latest    e133bdde4db8   2 minutes ago   173MB
```

## docker run
``` bash
$ sudo docker run -dit --name my-webapp -p 8080:80 my-apache2
$ sudo docker ps
CONTAINER ID   IMAGE        COMMAND              CREATED         STATUS         PORTS                                   NAMES
c52058cd5124   my-apache2   "httpd-foreground"   6 seconds ago   Up 5 seconds   0.0.0.0:8080->80/tcp, :::8080->80/tcp   my-webapp
```

### into docker
```bash
$ sudo docker exec -it my-webapp bash

root@c52058cd5124:/usr/local/apache2# ls -l
total 40
drwxr-xr-x 2 root root 4096 Oct 11 20:23 bin
drwxr-xr-x 2 root root 4096 Oct 11 20:23 build
drwxr-xr-x 2 root root 4096 Oct 11 20:23 cgi-bin
drwxr-xr-x 4 root root 4096 Oct 11 20:23 conf
drwxr-xr-x 3 root root 4096 Oct 11 20:23 error
drwxr-xr-x 1 root root 4096 Oct 18 21:12 htdocs
drwxr-xr-x 3 root root 4096 Oct 11 20:23 icons
drwxr-xr-x 2 root root 4096 Oct 11 20:23 include
drwxr-xr-x 1 root root 4096 Oct 18 21:13 logs
drwxr-xr-x 2 root root 4096 Oct 11 20:23 modules

root@c52058cd5124:/usr/local/apache2# cd htdocs/
root@c52058cd5124:/usr/local/apache2/htdocs# ls -l
total 96
-rw-r--r-- 1 root root    49 Oct 18 21:12 Dockerfile
-rw-r--r-- 1 root root 17128 Oct 19  2023 LICENSE.txt
-rw-r--r-- 1 root root    84 Oct 19  2023 LICENSE.txt:Zone.Identifier
-rw-r--r-- 1 root root   170 Oct 18 21:11 README.md
-rw-r--r-- 1 root root  1344 Oct 19  2023 README.txt
-rw-r--r-- 1 root root    84 Oct 19  2023 README.txt:Zone.Identifier
drwxr-xr-x 6 root root  4096 Oct 18 20:20 assets
-rw-r--r-- 1 root root 18398 Oct 19  2023 elements.html
-rw-r--r-- 1 root root    84 Oct 19  2023 elements.html:Zone.Identifier
-rw-r--r-- 1 root root  5045 Oct 19  2023 generic.html
-rw-r--r-- 1 root root    84 Oct 19  2023 generic.html:Zone.Identifier
drwxr-xr-x 2 root root  4096 Oct 18 20:20 images
-rw-r--r-- 1 root root  7195 Oct 18 21:04 index.html
-rw-r--r-- 1 root root    84 Oct 19  2023 index.html:Zone.Identifier
root@c52058cd5124:/usr/local/apache2/htdocs#
```

### how2pr
- https://oss.cashmallow.com/team/how2pr/