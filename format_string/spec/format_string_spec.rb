RSpec.describe FormatString do 
	it "verificar se o versionamento esta preenchido" do
		expect(FormatString::VERSION).not_to be nil
	end
	it "testa formatacao em real" do
		expect(FormatString::Moeda.br(2)).to eq("R$2")
	end
		it "testa formatacao em dolar" do
		expect(FormatString::Moeda.en(3)).to eq("$3")
	end
end