FROM java:8
MAINTAINER Siim <siim@aiotex.com>
# initial source: https://github.com/mozart-analytics/grails-docker/blob/master/grails-3/Dockerfile
# Set customizable env vars defaults.
# Set Grails version (default: 3.2.8; min: 3.0.0; max: 3.2.8).
ENV GRAILS_VERSION 3.2.10

# Install Grails
WORKDIR /usr/lib/jvm
RUN wget https://github.com/grails/grails-core/releases/download/v$GRAILS_VERSION/grails-$GRAILS_VERSION.zip && \
    unzip grails-$GRAILS_VERSION.zip && \
    rm -rf grails-$GRAILS_VERSION.zip && \
    ln -s grails-$GRAILS_VERSION grails

# Setup Grails path.
ENV GRAILS_HOME /usr/lib/jvm/grails
ENV PATH $GRAILS_HOME/bin:$PATH

# Create App Directory
RUN mkdir /app

# Set Workdir
WORKDIR /app

COPY grails-scaling/ /app
RUN rm -rf .gradle && rm -rf gradle && rm -rf build
RUN grails compile

EXPOSE 8080
# Set Default Behavior
CMD ["grails", "run-app", "--stacktrace"]