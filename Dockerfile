FROM rocker/r-base:4.0.3

ENV NB_USER rstudio
ENV NB_UID 1000
ENV VENV_DIR /srv/venv

ENV HOME /home/${NB_USER}
WORKDIR ${HOME}

RUN apt-get update && \
    apt-get -y install python3-venv python3-dev && \
    apt-get purge && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
RUN apt-get update && \
    apt-get -y install openjdk-11-jdk && \
    apt-get -y install liblzma-dev && \
    apt-get -y install libbz2-dev

RUN Rscript -e "install.packages('xlsx')"

USER ${NB_USER}
RUN python3 -m venv ${VENV_DIR} && \
    # Explicitly install a new enough version of pip
    pip3 install pip==20.3.3 && \
    pip3 install --no-cache-dir \
         jupyter-rsession-proxy
   

