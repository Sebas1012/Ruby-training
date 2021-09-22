require 'tiny_tds'
require 'dotenv'

Dotenv.load('.env')

user = ENV['DB_USR']
pass = ENV['DB_PSS']
host = ENV['DB_HOST']
port = ENV['DB_PORT']

client = TinyTds::Client.new username: user, password: pass, host: host, port: port, database: 'ruby_tests'

# Insert Row
result = client.execute("INSERT INTO usuarios(nombre, contraseña) VALUES('test_2','321')")
result.insert

# Select Row
puts client.execute("SELECT * FROM usuarios").each 


client.close