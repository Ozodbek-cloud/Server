FROM node:22-alpine

WORKDIR /app


COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

RUN npx prisma generate
RUN npm run build

CMD ["npm", "run", "start:dev"]