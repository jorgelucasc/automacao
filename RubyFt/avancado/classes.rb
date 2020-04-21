#interpolação de Strings

class  Conta
    attr_accessor :saldo, :nome

    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome
        
    end

    def deposita(valor)
        self.saldo += valor
        puts "Depositando o quantida de #{valor} reais na conta de #{nome}."
    end
end

c = Conta.new('Lucas')

c.deposita(100.00)
puts c.saldo

c.deposita(10.00)
puts c.saldo