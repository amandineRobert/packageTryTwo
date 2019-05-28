FROM rocker/hadleyverse:latest

MAINTAINER amandineRobert  "Amandine.Robert@liverpool.ac.uk"

RUN apt-get update && \
    apt-get install -y gdebi-core
RUN apt-get install -y systemd
RUN wget\
  https://raw.github.com/rstudio/shiny-server/master/config/upstart/shiny-server.conf\
  -O /etc/init/shiny-server.conf

RUN wget https://download3.rstudio.org/ubuntu-12.04/x86_64/shiny-server-1.4.7.815-amd64.deb
RUN gdebi -n shiny-server-1.4.7.815-amd64.deb

EXPOSE 3838

RUN mkdir /etc/services.d/shiny-server
COPY shiny-server.sh /etc/services.d/shiny-server/run
RUN chmod 755 /etc/services.d/shiny-server/run

CMD ["/init"]
