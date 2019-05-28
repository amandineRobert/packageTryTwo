FROM rocker/tidyverse:latest



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


CMD ["/init"]
