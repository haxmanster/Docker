FROM raspbian/jessie
RUN apt-get update
RUN apt-get install -y apache2 && apt-get clean
RUN apt-get install -y python3 python3-pip python3-virtualenv python3-dev npm git && apt-get clean

ADD Pi-Kitchen-Dashboard /var/www/html/Pi-Kitchen-Dashboard
ADD /usr/bin/env /usr/bin/env
ADD run.sh /
RUN chmod +x /run.sh
ADD Pi-Kitchen-Dashboard /var/www/html/Pi-Kitchen-Dashboard

RUN wget https://nodejs.org/dist/v4.0.0/node-v4.0.0-linux-armv7l.tar.gz
RUN tar -xvf node-v4.0.0-linux-armv7l.tar.gz
WORKDIR node-v4.0.0-linux-armv7l
RUN cp -R * /usr/local/
WORKDIR /var/www/html/
RUN npm install oauth
RUN npm install -g bower
WORKDIR /var/www/html/Pi-Kitchen-Dashboard
RUN bower install --allow-root


EXPOSE 80
CMD echo "ServerName localhost" >> /etc/apache2/apache2.conf
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
