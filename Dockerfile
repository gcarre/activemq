FROM gcarre/java7
MAINTAINER Guillaume Carre <guillaume.carre@amindsolutions.com>

ENV activemq_version 5.12.0

RUN wget http://apache.mirrors.lucidnetworks.net/activemq/${activemq_version}/apache-activemq-${activemq_version}-bin.tar.gz

RUN tar zxf apache-activemq-*.tar.gz

EXPOSE 61616 8161

WORKDIR apache-activemq-${activemq_version}/bin

CMD ["./activemq", "console"]