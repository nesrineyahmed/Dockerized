FROM node:14-alpine
RUN apk update && apk upgrade && \
    apk add git
RUN mkdir /workshop
RUN cd /workshop
RUN if [[ -d "/workshop/the-example-app.nodejs" ]] ; then rm -rf /workshop/the-example-app.nodejs; fi
RUN git clone https://github.com/contentful/the-example-app.nodejs.git
RUN npm install
ENTRYPOINT ["sh"]
