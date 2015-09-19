# docker run -d -p 0.0.0.0:5222:5222 -p 0.0.0.0:5269:5269 -v /srv/prosody:/var/lib/ -v /srv/ssl:/var/lib/ xmpp 
FROM debian

## ca-certificates to better verify other servers' certificates.
RUN apt-get -y update && apt-get -y install prosody ca-certificates lua-event lua-dbi-sqlite3

## /etc/prosody
RUN rm -rf /etc/prosody
COPY prosody /etc/prosody 
RUN rm -r /var/lib/prosody
RUN chown -R prosody:prosody /etc/prosody

## /var/run/prosody
RUN [ -d /var/run/prosody ] || mkdir /var/run/prosody
RUN chown -R prosody /var/run/prosody

## Set up initial user.
# RUN su -c 'prosodyctl adduser kyle@tyrfingr.is' prosody

## open port
EXPOSE 5222
EXPOSE 5269

ADD start-prosody /usr/local/bin/start-prosody
RUN chmod +755 /usr/local/bin/start-prosody
ENTRYPOINT ["/usr/local/bin/start-prosody"]
CMD ["start"]
