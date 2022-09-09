FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update && apt-get -y install gettext-base python3-pip && pip3 install determined
ADD . /opt/source
CMD cd /opt/source && bash /opt/source/register-template.sh

