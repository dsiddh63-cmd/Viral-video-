FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

# npm install use kar rahe hain
RUN npm install --production

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
