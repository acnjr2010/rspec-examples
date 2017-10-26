RSpec::Matchers.define :be_a_multiple_of do |expected|
	
	# expected == 3
	# actual == 18
	# cria o matcher
	match do |actual|
		actual % expected == 0
	end

	# edita a mensagem de erro
	failure_message do |actual|
		"expected that #{actual} would be a multiple of #{expected} <<<<<"
	end

	#edita a mensagem quando passa
	description do
		"be a multiple of #{expected}"
	end
end

describe 18, 'Custom Matchers' do
	it { is_expected.to be_a_multiple_of(3) }
end