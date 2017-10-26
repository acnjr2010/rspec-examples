describe "Composição AND/OR" do
	describe "Ruby on Rails" do
		it { is_expected.to start_with("Ruby").and end_with("Rails") }
		it { expect(fruits).to eq('uva').or eq('laranja').or eq('abacaxi')}

		# def fruits
		# 	%w(uva laranja abacaxi).sample
		# end
	end
	
end