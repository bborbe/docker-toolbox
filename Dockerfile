FROM ubuntu:14.04
MAINTAINER Benjamin Borbe <bborbe@rocketnews.de>
ENV HOME /root
ENV LANG en_US.UTF-8
RUN locale-gen en_US.UTF-8

RUN set -x \
    && apt-get update --quiet \
    && apt-get install --quiet --yes --no-install-recommends curl telnet wget dnsutils bonnie++ atop aptitude sysstat iotop psmisc \
    && apt-get clean
