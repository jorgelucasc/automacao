#projeto capybara do zero
describe 'meu primeiro script' do
    it 'Visitar a pagina' do
        visit 'http://training-wheels-protocol.herokuapp.com/'
        puts page.title
        expect(page.title).to eql "Training Wheels Protocol"
    end
end