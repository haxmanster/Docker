FROM raspbian/stretch

ADD crontab /etc/cron.d/hello-cron

RUN chmod 0644 /etc/cron.d/hello-cron


RUN apt-get update 

RUN apt-get install -y nginx 
RUN apt-get install -y cron

ADD Pi-Kitchen-Dashboard /var/www/html

ADD run.sh /

RUN chmod +x run.sh

EXPOSE 80

ENTRYPOINT service nginx start && bash

CMD cron

RUN /run.sh
