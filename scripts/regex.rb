sentence = "Hi I am ruby junior developer"

# Como sabemos una expresion regular busca patrones en un string, por lo mismo, si queremos hacer uso de regex debemos hacer uso del
# metodo .match? que valida si la expresion hace match con el string, la misma devuelve false si no hay ningun match y true si lo hay.
regex = /ruby/.match?(sentence)
puts regex

# Todos las expresiones regulares tienen un tipo llamado Regexp que puede ser visualizado haciendo uso del metodo .class
example = /rule/.class
puts example