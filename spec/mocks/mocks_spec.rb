require 'student'

# No caso do Mock o verify (expect) vem antes do exercise (chamada do método)
# Com o mock eu testo comportamento, diferente do stub que eu modifico o estado usando o allow

describe "Mocks" do
	it "bar" do
		student = Student.new

		expect(student).to receive(:bar)

		student.bar
	end

	it "args" do
		student = Student.new
		expect(student).to receive(:foo).with(123)

		student.foo(123)
	end

	it "repetição" do
		student = Student.new
		expect(student).to receive(:foo).with(123).twice

		student.foo(123)
		student.foo(123)
	end

	it "retorno" do
		student = Student.new
		expect(student).to receive(:foo).with(123).and_return(true)

		student.foo(123)
	end
end