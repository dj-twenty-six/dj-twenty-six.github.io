# https://docs.docker.com/engine/reference/builder/
FROM httpd:2.4.57

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]

RUN ["apt-get", "install", "-y",  "git"]
RUN ["git", "clone", "https://github.com/dj-twenty-six/dj-twenty-six.github.io", "/usr/local/apache2/app/blog"]

RUN ["apt-get", "install", "-y", "cron"]
COPY ["pull.sh", "/usr/local/apache2/app/blog/"]
COPY ["blog-pull-cronjob", "/etc/cron.d/blog-pull-cronjob"]
RUN crontab /etc/cron.d/blog-pull-cronjob

# Just once at the end
CMD service cron start;httpd-foreground
