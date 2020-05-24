describe 'Passando o mouse', :hover do
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/hovers'      
    end

    it 'Testando mouse' do
        card = find('img[alt=Blade]')
        card.hover
        
        expect(page).to have_content('Nome: Blade')
      
    end
    
    
  
end
