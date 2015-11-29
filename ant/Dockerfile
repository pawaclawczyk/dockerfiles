FROM debian

VOLUME /opt/java

ENV JAVA_PACKAGE_VERSION 8u66

WORKDIR /var/java

RUN apt-get update \
    && apt-get -y install wget

RUN wget \
    --no-cookies \
    --no-check-certificate \
    --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
    "http://download.oracle.com/otn-pub/java/jdk/${JAVA_PACKAGE_VERSION}-b14/jdk-${JAVA_PACKAGE_VERSION}-linux-x64.tar.gz"
RUN tar -zxf jdk-${JAVA_PACKAGE_VERSION}-linux-x64.tar.gz
# RUN rm -rf /opt/java/*
RUN chown -R root:root `ls -1 | grep -v gz`
RUN cp -r `ls -1 | grep -v gz`/* /opt/java/
RUN rm -rf `ls -1 | grep -v gz`
RUN rm -rf jdk-${JAVA_PACKAGE_VERSION}-linux-x64.tar.gz

ENV JAVA_HOME /opt/java
ENV PATH ${PATH}:/opt/java/bin

CMD ["java", "-version"]
