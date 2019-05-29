FROM rocker/tidyverse

ARG WHEN

RUN mkdir ~/packageTry/analysis

RUN Rscript -e "install.packages('data.table', dependencies=TRUE, repos='http://cran.rstudio.com/')"


COPY packageTry.R /home/packageTry/analysis/packageTry.R

CMD R -e "source('/home/packageTry/analysis/packageTry.R')"
