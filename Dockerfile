FROM node:14-alpine
RUN apk update && apk upgrade && \
    apk add git
RUN mkdir /workshop
RUN if [[ -d "/workshop/the-example-app.nodejs" ]] ; then rm -rf /workshop/the-example-app.nodejs; fi
RUN cd /workshop
RUN git clone https://github.com/contentful/the-example-app.nodejs.git
RUN npm install
ENTRYPOINT ["sh"]
