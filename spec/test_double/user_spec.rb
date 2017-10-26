describe "Test Double" do
	it "Test Doubles Examples" do
		user = double('User')
		allow(user).to receive(:name).and_return('Antonio')
		allow(user).to receive(:password).and_return('secret')

		user.name
		user.password
	end

	it "as_null_object" do
		user = double('User').as_null_object
		allow(user).to receive(:name).and_return('Antonio')
		allow(user).to receive(:password).and_return('secret')

		user.name
		user.password
		user.abc #O erro será ignorado por causa do as_null_object
	end
end