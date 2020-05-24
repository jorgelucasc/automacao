describe 'Caixa de seleção' do
    
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'marcando opcao' do
        check('thor')        
    end

    it 'desmarcando' do
        uncheck('antman')
    end

    it 'find e set true' do
        find('input[value=cap]').set(true)
        
    end
end