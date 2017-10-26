require 'calculator'

describe Calculator do
  context "#sum" do
    it "with positive numbers" do
      #calc = Calculator.new
      result = subject.sum(5,7)
      expect(result).to eql(12)
    end

    it "with negative and positive numbers" do
      #calc = Calculator.new
      result = subject.sum(-5,7)
      expect(result).to eql(2)
    end

    it "with negative numbers" do
      #calc = Calculator.new
      result = subject.sum(-5, -7)
      expect(result).to eql(-12)
    end
  end

  context "#divider" do
    it "divide by 0 - Testando matchers de erro" do
      #raise_exception é um teste de erro generico e costuma enviar uma frase de warning avisando sobre isso, por isso ele está comentado
      #expect{subject.div(3, 0)}.to raise_exception 
      expect{subject.divider(3, 0)}.to raise_error(ZeroDivisionError)
      expect{subject.divider(3, 0)}.to raise_error("divided by 0")
      expect{subject.divider(3, 0)}.to raise_error(ZeroDivisionError, "divided by 0")
      expect{subject.divider(3, 0)}.to raise_error(/divided/) 
    end
  end
end
