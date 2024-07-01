FROM ruby:3.3.2-slim

RUN apk --update add --virtual build_deps \
    build-base \
    libc-dev \
    cmake \
    && apk add icu-dev openssl-dev \
    && gem install github-linguist \
    && apk del build_deps \
	&& rm /var/cache/apk/*

CMD ["github-linguist"]
