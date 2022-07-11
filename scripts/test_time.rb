class Hilos
  def contar
    3.times do |i|
      i += 1
      puts i
      sleep(1)
    end
  end

  def texto
    puts "Hola! Estoy en un hilo"
  end
end

objeto = Hilos.new

h1 = Thread.new { objeto.contar }
h2 = Thread.new { objeto.texto }

h1.join
h2.join