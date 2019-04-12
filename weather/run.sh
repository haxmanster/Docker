
echo "*/15 * * * * /var/www/html/Pi-Kitchen-Dashboard/bin/cron.sh" >> /etc/cron.d/weather
chmod 0644 /etc/cron.d/weater
service cron start
