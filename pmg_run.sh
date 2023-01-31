cd ~/spamassassinBrRule

git pull

cp /etc/mail/spamassassin/custom.cf /etc/mail/spamassassin/custom.cf-bkp-`date +%Y-%m-%d-%H%M`.old

sleep 3

cp spamassassin-custom.cf /etc/mail/spamassassin/custom.cf

#Sincronize as configurações e reinicie os serviços do pmg

pmgconfig sync --restart 1

systemctl restart pmg-smtp-filter pmgpolicy postfix


