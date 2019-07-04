FROM docker:18

RUN apk update && \
    apk --no-cache upgrade && \
    apk add python py-pip go git && \
    pip install awscli && \
    apk --purge -v del py-pip && \
    rm -rf /var/cache/apk/* /tmp/*
