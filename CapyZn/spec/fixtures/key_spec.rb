describe "Teclado", :key do
  before(:each) do
    visit "key_presses"
  end

  it "enviando teclas" do
    teclas = %i[tab escape space enter shift control alt]

    teclas.each do |t|
      find("#campo-id").send_keys t
      expect(page).to have_content "You entered: " + t.to_s.upcase
      sleep 2
    end
  end
end
