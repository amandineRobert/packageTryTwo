FROM rocker/r-ver:3.6.0

ARG WHEN

RUN mkdir ~/packageTry/analysis

RUN R -e "options(repos = list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/${WHEN}'));
install.packages('packageTry')"

COPY packageTry.R ~/packageTry/analysis/packageTry.R

CMD R -e "source('~/packageTry/analysis/packageTry.R')"
