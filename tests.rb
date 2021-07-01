# Hacer tests es importante para validar que nuestro codigo funciona correctamente, por lo mismo, ruby desde su version 1.9 la incluye
# en su core.

require 'minitest/autorun'

# Como estandar un test con esta gema se compone de varias partes, que son: 
# 1. Una clase que hereda de Minitest
class UpperCaseTest < Minitest::Test
<<<<<<< HEAD
	# 2. Un metodo que evalua nuestro codigo
	def test_text_downcase_to_upcase
	# 3. Configuracion de la prueba(instancias, asignacion de valores, etc.)
		text = 'Hello'
		# 4. Bloque de ejecucion(donde ejecutamos el codigo que arrojara un valor)
		upcase_text = text.upcase
    # 5. Verificacion(donde usamos minitest para validar que si tenemos el resultado deseado)
    assert_equal 'HELLO', upcase_text
  end
end
=======
    # 2. Un metodo que evalua nuestro codigo
    def test_text_downcase_to_upcase
        # 3. Configuracion de la prueba(instancias, asignacion de valores, etc.)
        text = 'Hello'

        # 4. Bloque de ejecucion(donde ejecutamos el codigo que arrojara un valor)
        upcase_text = text.upcase

        # 5. Verificacion(donde usamos minitest para validar que si tenemos el resultado deseado)
        assert_equal 'HELLO', upcase_text
    end
end
>>>>>>> 54e3e1365e6e3a6f037c167413fe6f1bb2b7ce76
