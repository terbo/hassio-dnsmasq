ARG BUILD_FROM
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8

# Setup base
RUN apk add --no-cache dnsmasq rsyslog python3
# RUN apk add --no-cache python3 openssh-server openssh-client

# Copy data
COPY run.sh /
COPY dnsmasq.conf /etc
COPY rsyslog.conf /etc

RUN chmod a+x /run.sh
CMD [ "/run.sh" ]
