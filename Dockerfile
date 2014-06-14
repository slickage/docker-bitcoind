FROM fedora
MAINTAINER Slickage <info@slickage.com>
RUN cd /; curl -O https://bitcoin.org/bin/0.9.1/bitcoin-0.9.1-linux.tar.gz
RUN tar xvzf bitcoin-0.9.1-linux.tar.gz
RUN mkdir /root/.bitcoin
ADD ./bitcoin.conf /.bitcoin/bitcoin.conf
ADD ./start.sh /start.sh
RUN chmod 755 /start.sh
EXPOSE 18332
CMD ["/bin/bash", "/start.sh"]

