class Veiculo
    attr_accessor :nome, :marca, :modelo, :cc

    def initialize(nome,marca,modelo,cc)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
        self.cc = cc
    end

    def ligar
        puts "#{nome} está pronto para uso"
    end
    def buzinar
        puts 'Beep!Beep!'
    end
end

class Carro < Veiculo
    def dirigir
        puts "#{nome} esta iniciando o trajeto"
    end
end

class Moto < Veiculo
    def pilotar
        puts "#{nome} está pronta"
    end  
end

carro1 = Carro.new('Civic','Honda','SI','1000')
carro1.ligar
carro1.buzinar
carro1.dirigir
puts carro1.cc

moto1 = Moto.new('XT',"YAMAHA","CAVALO DE TROIA",660)
moto1.ligar
moto1.buzinar
moto1.pilotar
puts moto1.cc