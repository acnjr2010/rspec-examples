$count = 0

# let! => chama o let antes de precisa e não só quando é necessário

describe "let!" do
	order_de_invocacao = []

	let!(:contador) do
		order_de_invocacao << :let!
		$count += 1
	end

	it "chama o método helper antes do teste" do
		order_de_invocacao << :exemplo
		expect(order_de_invocacao).to eq([:let!, :exemplo])
		expect(contador).to eq(1)
	end
end