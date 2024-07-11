FROM node:20.15.1
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN yarn --frozen-lockfile
COPY . ./
RUN yarn build
EXPOSE 3000
CMD yarn start
