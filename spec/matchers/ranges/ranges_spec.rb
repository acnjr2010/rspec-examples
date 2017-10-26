describe (1..5), "Testando Ranges com rspec" do
	it "#cover" do
		expect(subject).to cover(3)
		expect(subject).to cover(3,5)
		expect(subject).not_to cover(0,6) 
	end

	# sintaxt em uma unica linha
	#is_expected = expect(subjetct)

	it { is_expected.to cover(2) }
	it { is_expected.to cover(4,2) }
	it { is_expected.not_to cover(0,6) }
	it { expect(subject).to cover(2) }
end