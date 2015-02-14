FROM ubuntu:14.04
MAINTAINER Uros Trebec "uros@datafy.it"

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install wget -y
RUN apt-get clean

RUN wget http://09c8d0b2229f813c1b93-c95ac804525aac4b6dba79b00b39d1d3.r79.cf1.rackcdn.com/Anaconda-2.1.0-Linux-x86_64.sh -O /srv/anaconda.sh

RUN bash /srv/anaconda.sh -b
RUN rm -rf /srv/anaconda.sh

ENV PATH /anaconda/bin:$PATH

CMD ["/bin/bash", "-l"]
