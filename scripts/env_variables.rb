#Importamos la gema
require 'dotenv'

# Cargamos el archivo que contiene las variables de entorno (NUNCA DEBER SER SUBIDO A EL REPOSITORIO EN LA NUBE)
Dotenv.load('.env')

# Accedemos a la variable especifica
puts ENV['PRUEBA_KEY']
puts ENV['PRUEBA_KEY'].class

#Es importante saber que ENV nos va a retornar un string, pero ponemos convertirlo en lo que queramos.

puts ENV['PRUEBA_KEY'].to_i.class