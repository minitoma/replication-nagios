#!/bin/sh

yum install inotify-tools -y

# init ssh and and cronjob

./init-ssh

# make daemon

cp sync-nagios /etc/sync-nagios

#(crontab -l 2>/dev/null; echo "* 2 * * * /etc/sync-nagios ") | crontab -

cp replic-nagios /etc/replic-nagios

cp replic-nagios.service /etc/systemd/system/replic-nagios.service

systemctl daemon-reload

systemctl start replic-nagios

systemctl enable replic-nagios


exit 0
