FROM rocker/verse:latest

RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    apt-get clean;

RUN Rscript -e "install.packages('mblm')"
