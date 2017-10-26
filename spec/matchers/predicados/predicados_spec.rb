describe "Matchers Predicatos - Todos os predicador podem ser usados no rspec com be_predicado" do
	it "predicado odd?" do
		expect(1).to be_odd  
	end

	it "predicado even?" do
		expect(2).to be_even  
	end

	it "predicado nil?" do
		expect(defined? x).to be_nil  
	end
end