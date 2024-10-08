FROM node:20-alpine

WORKDIR /usr/src/app

COPY ./ /usr/src/app/
COPY package*.json ./

RUN npm install
RUN npm run build

COPY . .

EXPOSE 5050

CMD [ "npm", "run", "preview" ]
