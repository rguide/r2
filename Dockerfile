FROM rocker/r-ver:4.0.0
RUN Rscript -e "install.packages('mblm')"
