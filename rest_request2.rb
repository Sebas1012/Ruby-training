require 'httpclient'
require 'json'
require 'dotenv'

Dotenv.load('.env')

print 'Enter a city: '
city = gets.chomp.downcase

client = HTTPClient.new
token = ENV['WEATHER_API_KEY']

begin
  cont = client.get_content "http://api.openweathermap.org/data/2.5/weather?q=#{city}&units=metric&appid=#{token}"
  cont = JSON.parse(cont)

  30.times do
    print '-'
  end

  puts "\nTemperature: #{cont['main']['temp']}°"
  puts "Feeling: #{cont['main']['feels_like']}°"
  puts "Humidity: #{cont['main']['humidity']}%"
  puts "Wind Speed: #{cont['wind']['speed']}km/h"
  puts "Country: #{cont['sys']['country']}"

  30.times do
    print '-'
  end

rescue 
  puts "Sorry...also went wrong. Try again"
end