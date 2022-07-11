class Hilos
  def hora
    5.times do |i|
      puts Time.now
      sleep(1)
    end
  end

  def texto
    puts "Hola! Estoy en un Hilo"
  end
end

prueba = Hilos.new

hilo1 = Thread.new {prueba.hora}
hilo2 = Thread.new {prueba.texto}

hilo1.join
hilo2.join

# prueba.hora
# prueba.texto