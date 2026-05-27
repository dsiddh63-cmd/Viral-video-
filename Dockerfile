# Dockerfile for Telegram Bot
FROM node:20-alpine

# Working directory set karo
WORKDIR /app

# Package files copy karo
COPY package*.json ./

# Dependencies install karo
RUN npm ci --only=production

# Baaki saari files copy karo
COPY . .

# Port (Telegram bot ke liye usually nahi chahiye, lekin safe side)
EXPOSE 3000

# Bot start karne ka command
CMD ["npm", "start"]
