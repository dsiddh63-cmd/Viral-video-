require('dotenv').config();
const TelegramBot = require('node-telegram-bot-api');

const bot = new TelegramBot(process.env.BOT_TOKEN, { polling: true });

console.log("✅ Telegram Bot Started Successfully!");

bot.on('message', (msg) => {
  const chatId = msg.chat.id;
  const text = msg.text;

  if (text === '/start') {
    bot.sendMessage(chatId, "Hello! I'm your Viral Video Bot 🚀\n\nSend any message to test.");
  } else {
    bot.sendMessage(chatId, `You said: ${text}`);
  }
});
