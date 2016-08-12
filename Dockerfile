FROM felix11h/neuroenv_smt_ltx
MAINTAINER Felix Z. Hoffmann <felix11h.dev@gmail.com>

# install graph-tool (adapted from idekerlab/vizbi-2015)
RUN echo "deb http://downloads.skewed.de/apt/trusty trusty universe" >>/etc/apt/sources.list
RUN echo "deb-src http://downloads.skewed.de/apt/trusty trusty universe" >>/etc/apt/sources.list
RUN apt-key add graph-tool-pub-key.txt

RUN add-apt-repository ppa:ubuntu-toolchain-r/test

RUN apt-get update && apt-get install -y python-graph-tool
