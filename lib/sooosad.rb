require 'telegram/bot'

token = ENV['SOOOSAD_TOKEN']

sooo_sad_gif =
  'http://45.media.tumblr.com/49795f40adbbc7f8b025e6bcc1182e1e/tumblr_muwyl5V7Vv1qbskx5o8_250.gif'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    puts message
    case message.text
    when '/sooosad'
      bot.api.send_message(chat_id: message.chat.id, text: sooo_sad_gif)
    end
  end
end
