FROM mongo:3.2
MAINTAINER Siim <siim@aiotex.com>

COPY mongo/add-user.sh /opt/add-user.sh
RUN chmod a+x /opt/add-user.sh
COPY mongo/mongod.conf /etc/mongod.conf

CMD sh /opt/add-user.sh && mongod
