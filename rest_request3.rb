require 'httparty'
require 'json'
require 'dotenv'

Dotenv.load('.env')

class TestDB
    include HTTParty

    base_uri ENV['DB_URL']

    def users
        self.class.get('/usuarios.json').code
    end

    def new_users(name, age, sex)
        self.class.post('/usuarios.json', 
        body: {
            edad: age,
            nombre: name,
            sexo: sex,
        }.to_json,
        header: {
            'Content-Type' => 'application/json'
        }
      ).code
    end

    def delete_user(id)
        self.class.delete("/usuarios/#{id}.json").code
    end
end

prueba = TestDB.new

puts prueba.delete_user("-MghRqgElc4zflgn3hwX")

