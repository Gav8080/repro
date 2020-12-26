FROM ubuntu:18.04
RUN apt-get update
RUN apt-get -y install apache2
ENV TZ=Africa/Lagos
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
