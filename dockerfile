FROM ubuntu:latest
RUN apt update -y
RUN apt install apache2 -y
WORKDIR /var/www/html
COPY index.html ./
EXPOSE 80
CMD ["/usr/bin/apache2ctl", "-d", "foreground"] 