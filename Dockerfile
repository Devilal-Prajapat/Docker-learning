FROM ubuntu:latest AS BUILD_IMAGE
RUN apt update && apt install git wget unzip apache2 -y
RUN mkdir -p /tmp/webfiles
RUN chmod 777 /tmp/webfiles
RUN cd /tmp/webfiles
RUN wget https://www.tooplate.com/zip-templates/2098_health.zip
RUN unzip 2098_health.zip
RUN cp -r 2098_health/* /var/www/html/

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
VOLUME /val/log/apache2
WORKDIR /var/www/html/
EXPOSE 80
