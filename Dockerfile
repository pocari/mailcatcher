FROM ruby:2.3.0-alpine

RUN apk --no-cache --update add \
                            libstdc++ \
                            build-base \
                            openssl-dev \
                            sqlite \
                            sqlite-dev \
                            ruby-dev && \
    gem install mailcatcher && \
    apk del build-base ruby-dev && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

EXPOSE 1025 1080

CMD ["mailcatcher", "-f", "--ip=0.0.0.0"]
