FROM rocker/rstudio:latest

MAINTAINER Chia-Chi Chang <c3h3.tw@gmail.com>

RUN apt-get update && apt-get remove -y r-cran-littler r-base-dev r-recommended r-base r-base-core

ARG MRS_FILE
COPY $MRS_FILE /tmp/$MRS_FILE

RUN mkdir -p /tmp/MRS && cd /tmp && tar xfzv $MRS_FILE -C MRS/ --strip-components=1 && cd /tmp/MRS && ./install.sh -a -s && rm -r /tmp/MRS

CMD ["/init"] 
