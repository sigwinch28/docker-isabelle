FROM satsuki.kent.ac.uk:5000/texlive:latest

ENV VERSION 2016-1

RUN apt-get update && \
    apt-get install -y wget && \
    wget -qO- http://isabelle.in.tum.de/dist/Isabelle${VERSION}_app.tar.gz | tar vxz && \
    apt-get purge -y wget && \
    apt-get autoremove -y --purge

RUN ./Isabelle${VERSION}/bin/isabelle install /usr/local/bin

VOLUME /data


