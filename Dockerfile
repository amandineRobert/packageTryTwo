FROM rocker/r-ver:3.6.0

RUN R -e "install.packages('packageTry')"

COPY . ~/packageTry/R

WORKDIR ~/packageTry/R

CMD ["Rscript", "packageTry.R"]
