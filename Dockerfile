FROM httpd:2.4
RUN date
COPY . /usr/local/apache2/htdocs/
