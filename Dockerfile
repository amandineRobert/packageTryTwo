FROM rocker/verse:latest

RUN R -e "install.packages('gapminder', repos = 'http:cran.us.r-project.org')"
