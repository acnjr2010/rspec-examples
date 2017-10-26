$counter = 0

#let => é chamado assim que é necessário e fica salvo em cache até terminar o teste

describe "let" do
	let(:count) { $counter += 1}

	it "memorizar o valor" do
		expect(count).to eq(1)
		expect(count).to eq(1)  
	end

	it "não é cacheado entre os testes" do
		expect(count).to eq(2)
	end
end