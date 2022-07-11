require 'twilio-ruby'
require 'dotenv'

Dotenv.load('.env')

client =  Twilio::REST::Client.new(ENV['SID'], ENV['TOKEN'])

client.messages.create(
  from: ENV['TWILIO_PHONE'],
  to: ENV['PHONE'],
  body: "Mensaje de prueba"
)
