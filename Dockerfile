FROM node:14-alpine
RUN mkdir /usr/local/nvm
USER root
RUN apk update && \
apk upgrade
RUN apk add make g++
WORKDIR /srv/app
COPY [".","/srv/app"]

RUN npm install

EXPOSE 3000

CMD ["sh", "./docker/entrypoint.sh"]