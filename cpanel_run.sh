#chegando se há atuaização no repositorio
cd /root/spamassassinBrRules/ && git pull

#backup do arquivo atual
cp /etc/mail/spamassassin/custom.cf /etc/mail/spamassassin/custom.cf-bkp-`date +%Y-%m-%d-%H%M`.old

#Copie o novo arquivo para o custom.cf
cp spamassassin-custom.cf /etc/mail/spamassassin/custom.cf

#reiniciaando o o spamd
/scripts/restartsrv_spamd 