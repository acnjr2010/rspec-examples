require 'person'

describe "Attributes", :attributes do
	it "simple have_attributes" do
		person = Person.new
		person.name = "Antonio"
		expect(person).to have_attributes(name: "Antonio")
	end

	it "have_attributes with alias starting_with and be" do
 		person = Person.new
 		person.name = "Antonio"
 		person.age = 33

 		expect(person).to have_attributes(name: starting_with("A"), age: (be > 30))  
	end

	it "have_attributes with alias a_string_starting_with and a_value" do
		person = Person.new
		person.name = "Antonio"
		person.age = 33

		expect(person).to have_attributes(name: a_string_starting_with("A"), age: (a_value > 30))
	end
end				