FROM fedora
MAINTAINER James Wang
ADD ./bitcoin-0.9.0-linux.tar.gz /bitcoin
RUN mkdir /root/.bitcoin
ADD ./bitcoin.conf /.bitcoin/bitcoin.conf
ADD ./start.sh /start.sh
RUN chmod 755 /start.sh
EXPOSE 18332
CMD ["/bin/bash", "/start.sh"]

