# FROM node:14-alpine
# RUN mkdir /usr/local/nvm
# USER root
# RUN apk update && \
# apk upgrade
# RUN apk add make g++
# WORKDIR /srv/app
# COPY [".","/srv/app"]

# RUN npm install

# EXPOSE 3000

# CMD ["sh", "./docker/entrypoint.sh"]

FROM strapi/base

WORKDIR /srv/app
COPY [".","/srv/app"]

RUN npm install --ignore-scripts=false --verbose sharp
RUN npm install --platform=linux --arch=x64 sharp
RUN npm link strapi-helper-plugin

EXPOSE 1337

CMD ["sh", "./docker/entrypoint.sh"]


