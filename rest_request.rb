require 'httpclient'
require 'json'

print 'Enter a crypto currency: '
coin_type = gets.chomp.upcase

client = HTTPClient.new

begin
    cont = client.get_content "https://api.coinbase.com/v2/exchange-rates?currency=#{coin_type}"
    cont = JSON.parse(cont)

    30.times do
        print '-'
    end

    puts "\nValue in USD: $#{cont['data']['rates']['USD']}"
    puts "Value in COP: #{cont['data']['rates']['COP']}$\n"

    30.times do
        print '-'
    end
    
rescue 
    puts "Sorry...also went wrong. Try again"
end



