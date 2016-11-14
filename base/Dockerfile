FROM ubuntu:14.04.3

MAINTAINER Chia-Chi Chang <c3h3.tw@gmail.com>

RUN apt-get update && apt-get install -y curl make gcc g++ gfortran libcurl4-openssl-dev libxml2-dev vim

ARG MRS_FILE
COPY $MRS_FILE /tmp/$MRS_FILE

RUN mkdir -p /tmp/MRS && cd /tmp && tar xfzv $MRS_FILE -C MRS/ --strip-components=1 && cd /tmp/MRS && ./install.sh -a -s && rm -r /tmp/MRS

#CMD ["/init"] 
