FROM node:10.16.0-alpine

RUN apk add --no-cache python-dev zip jq git curl openjdk8 \
    && curl -O https://bootstrap.pypa.io/get-pip.py && python get-pip.py \
    && pip install awscli \
    && npm i -g grunt-cli bower

CMD ["node"]