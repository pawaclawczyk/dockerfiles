FROM debian

ENV JAVA_MAJOR_VERSION 8
ENV JAVA_UPDATE_VERSION 66
ENV JAVA_PACKAGE_VERSION ${JAVA_MAJOR_VERSION}u${JAVA_UPDATE_VERSION}
ENV JAVA_DIR jdk1.${JAVA_MAJOR_VERSION}.0_${JAVA_UPDATE_VERSION}

WORKDIR /var/java

RUN apt-get update \
    && apt-get -y install wget

RUN wget \
    --no-cookies \
    --no-check-certificate \
    --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
    "http://download.oracle.com/otn-pub/java/jdk/${JAVA_PACKAGE_VERSION}-b14/jdk-${JAVA_PACKAGE_VERSION}-linux-x64.tar.gz"
RUN tar -zxf jdk-${JAVA_PACKAGE_VERSION}-linux-x64.tar.gz \
    && chown -R root ${JAVA_DIR}

VOLUME /opt/java

ENV JAVA_HOME = /opt/java
ENV PATH ${PATH}:/opt/java/bin

CMD chown -R root ${JAVA_DIR} && mv ${JAVA_DIR}/* /opt/java/ && java -version && /bin/bash 
