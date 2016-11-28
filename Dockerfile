FROM alpine:latest
ENV PACKAGES="python py-setuptools ca-certificates git vim"
RUN apk update && apk upgrade \
    && apk add --no-cache $PACKAGES \
    && ln -s /usr/bin/easy_install-2.7 /usr/bin/easy_install \
    && easy_install pip \
    && pip install --upgrade pip \
