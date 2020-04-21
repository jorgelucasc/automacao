#aula ruby rspec QA Ninja
class AvengerHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(vingador)
        self.list.push(vingador)
    end  
end

describe AvengerHeadQuarter do   
    it 'deve adicionar um vingador' do
        hq = AvengerHeadQuarter.new

        hq.put('SpiderMan')
        expect(hq.list).to eql ['SpiderMan']
    end 
    
    it  'Adicionando lista de vingadores' do
        hq = AvengerHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        res = hq.list.size > 0

        expect(hq.list.size).to be > 0
    end

    it 'Verificando o sobrenome' do
        avenger = "Jorge Lucas"

        expect(avenger).to match(/Lucas/)
    end
end