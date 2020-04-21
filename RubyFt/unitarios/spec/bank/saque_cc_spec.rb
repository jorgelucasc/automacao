require_relative '../../app/bank'

describe Contacorrente do
    describe "Saque" do
        context 'Quando o valor é positivo' do
            before(:all) do
                @cc = Contacorrente.new(1000.00)
                @cc.saca(200)
            end
            it 'entao atualiza saldo' do
                expect(@cc.saldo).to eql 795.00
                puts @cc.saldo
            end
        end
    context 'quando o saldo é insuficiente' do
        before(:all) do
            @cc = Contacorrente.new(0.00)
            @cc.saca(10.00)
        end
    end    
    end
end