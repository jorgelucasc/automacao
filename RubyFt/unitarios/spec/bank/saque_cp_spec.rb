require_relative '../../app/bank'

describe ContaPoupanca do
    describe "Saque" do
        context 'Quando o valor é positivo' do
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(200)
            end
            it 'entao atualiza saldo' do
                expect(@cp.saldo).to eql 799.00
                puts @cp.saldo
            end
        end
    context 'quando o saldo é insuficiente' do
        before(:all) do
            @cp = ContaPoupanca.new(0.00)
            @cp.saca(10.00)
        end

    context 'quando supera o limite de saque' do
        before(:all) do
            @cp = ContaPoupanca.new(1000.00)
            @cp.saca(701.00)
        end
        it 'entao exibe a mensagem' do
            expect(@cp.mensagem).to eql 'Limite maximo por saque é de R$ 500'
        end
    end
    end    
    end
end