FROM rocker/binder:3.6.3
LABEL maintainer='Ben Arnold'
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}


RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    libudunits2-dev

RUN wget https://github.com/ben-arnold/mbita-schisto/raw/master/DESCRIPTION && R -e "options(repos = list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2020-07-24/')); devtools::install_deps()"

RUN rm DESCRIPTION.1; exit 0
