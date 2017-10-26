require 'person'

describe "Attributes", :attributes do

	before(:each) do
	 	puts ">>>>>> utilizando tags nesse teste"
	 	puts "rspec . -t attributes"
	end

	let(:person) { Person.new } 

	it "simple have_attributes" do
		person.name = "Antonio"
		expect(person).to have_attributes(name: "Antonio")
	end

	it "have_attributes with alias starting_with and be" do
 		person.name = "Antonio"
 		person.age = 33

 		expect(person).to have_attributes(name: starting_with("A"), age: (be > 30))  
	end

	it "have_attributes with alias a_string_starting_with and a_value" do
		person.name = "Antonio"
		person.age = 33

		expect(person).to have_attributes(name: a_string_starting_with("A"), age: (a_value > 30))
	end
end	