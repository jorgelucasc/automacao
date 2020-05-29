describe "iframes" do
  describe "iframebom" do
    before(:each) do
      visit ""
    end

    it "adicionando produto" do
      within_frame("burgerId") do
        produto = find(".menu-item-info-box", text: "REFRIGERANTE")
        produto.find("")
      end
    end
  end
end
