require 'redis'
require 'dotenv'

Dotenv.load('.env')

host = ENV['URL']
port = ENV['PORT']
user = ENV['USR']
pass = ENV['PASS']

redis = Redis.new(host: host, port: port, username: user, password: pass)

# Elimina todas las keys de todas las bases de datos
# puts redis.flushall
# Elimina las keys de nuestra base de datos en la que estamos.
# puts redis.flushdb

# Lista todas las keys de nuestra db
# puts redis.keys('*')

# Muestra cuantas keys hay en nuestra db como un entero
# puts redis.dbsize

# Retorna informacion del servidor
puts redis.info

# Permite ingresar un dato
# puts redis.set('llave_1', 'test_1')


