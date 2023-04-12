
FROM node:16.14.0
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN yarn install
COPY . .
EXPOSE 1337
RUN chown -R node /usr/src/app
USER node
RUN yarn build
CMD ["yarn", "start"]
