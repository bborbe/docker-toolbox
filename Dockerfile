FROM ubuntu:16.04
MAINTAINER Benjamin Borbe <bborbe@rocketnews.de>
ARG VERSION

ENV HOME /root
ENV LANG en_US.UTF-8

RUN set -x \
	&& DEBIAN_FRONTEND=noninteractive apt-get update --quiet \
	&& DEBIAN_FRONTEND=noninteractive apt-get upgrade --quiet --yes \
	&& DEBIAN_FRONTEND=noninteractive apt-get install --quiet --yes --no-install-recommends \
	locales \
	apt-transport-https \
	aptitude \
	ca-certificates \
	psmisc \
	sysstat \
	atop \
	iotop \
	bonnie++ \
	curl \
	wget \
	telnet \
	openssh-client \
	traceroute \
	iputils-ping \
	dnsutils \
	net-tools \
	iproute2 \
	&& DEBIAN_FRONTEND=noninteractive apt-get autoremove --yes \
	&& DEBIAN_FRONTEND=noninteractive apt-get clean
RUN locale-gen en_US.UTF-8
