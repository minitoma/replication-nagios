INSTALLATION

1) yum install inotify-tools -y

2) ./init-ssh

3) cp sync-nagios /etc/sync-nagios

   cp replic-nagios /etc/replic-nagios

   cp replic-nagios.service /etc/systemd/system/replic-nagios.service

   systemctl daemon-reload

   systemctl start replic-nagios

   systemctl enable replic-nagios



ATTENTION DE BIEN INDIQUER LES ADRESSES DES SERVEURS ET UTILISATEURS

A chaque modification dans le dossier /usr/local/nagios (sauf le dossier /var) sur le 1er nagios le script va créer une archive de la configuration du nagios 2 et va copier la configuration du nagios 1 sur le nagios 2.
         
