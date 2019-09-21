FROM ubuntu:bionic-20190912.1 AS base

FROM base as build
RUN apt-get update && apt-get -y install --no-install-recommends \
		build-essential \
		ca-certificates \
		wget \
	&& rm -rf /var/lib/apt/lists/*
ARG version
ARG base_url=https://downloads.sourceforge.net/smartmontools
RUN wget ${base_url}/smartmontools-${version}.tar.gz && \
	tar xf smartmontools-${version}.tar.gz
WORKDIR /smartmontools-${version}
RUN ./configure && \
	make && \
	make DESTDIR=/_install install

FROM base
COPY --from=build /_install /
