require "person"

shared_examples 'status' do |sentimento|
	it "#{sentimento}" do
		person.send("#{sentimento}!")
		expect(person.status).to eq("Sentindo-se #{sentimento.capitalize}!")  
	end
end

describe "Person" do
	subject(:person) { Person.new }

	include_examples 'status', :feliz
	it_behaves_like 'status', :triste
	it_should_behave_like 'status', :contente

	# it "feliz!" do
	#  	person.feliz!
	#  	expect(person.status).to eq("Sentindo-se Feliz!")  
	#  end

	#  it "triste!" do
	#  	person.triste!
	#  	expect(person.status).to eq("Sentindo-se Triste!")  
	#  end 

	#  it "contente!" do
	#  	person.contente!
	#  	expect(person.status).to eq("Sentindo-se Contente!")  
	#  end  
end