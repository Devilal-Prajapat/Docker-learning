FROM ubuntu:20.04
LABEL "Author"="Devilal"
LABEL "Project"="web"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y apache2 git
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]

EXPOSE 80
WORKDIR /var/www/html/
VOLUME /var/log/apache2

ADD nano.tar.gz /var/www/html/
#COPY nano.tar.gz /var/www/html/
