require 'telegram/bot'

token = ENV['SOOOSAD_TOKEN']

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/sooosad'
      bot.api.send_message(chat_id: message.chat.id, text: "Tump Tump Tump\nSoooo Sad!")
    end
  end
end

