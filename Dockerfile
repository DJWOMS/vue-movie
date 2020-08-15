FROM node:12.16.1

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json /app/package.json
RUN npm install

COPY . /app

# start app
CMD npm run serve
#--host 0.0.0.0
