FROM node:14-alpine
RUN apk update && apk upgrade && \
    apk add git
RUN if [[ -d "/the-example-app.nodejs" ]] ; then rm -r /the-example-app.nodejs; fi
