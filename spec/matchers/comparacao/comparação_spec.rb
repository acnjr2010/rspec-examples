describe "Matchers de Comparação" do

  before(:all) do
    puts ">>>> ANTES DE TODO O CONTEXTO"
  end

  after(:context) do
    puts ">>>> DEPOIS DE TODO O CONTEXTO"
  end

  before(:each) do
    puts ">>>> ANTES DE CADA TESTE"
  end

  after(:each) do
    puts ">>>> DEPOIS DE CADA TESTE"
  end

  #substitui o before e o each quando tem sempre que fazer os dois
  around(:each) do |teste|
    puts ">> ANTES AROUND"

    teste.run # roda os testes

    puts ">> DEPOIS AROUND"
  end


  it ">" do
    expect(5).to be > 2
  end

  it ">=" do
    expect(5).to be >= 4
    expect(5).to be >= 5
  end

  it "<" do
    expect(5).to be < 10
  end

  it "<=" do
    expect(5).to be <= 12
    expect(5).to be <= 5
  end

  it "be_between inclusive" do
    expect(5).to be_between(2,7).inclusive
    expect(2).to be_between(2,7).inclusive
    expect(7).to be_between(2,7).inclusive
  end

  it "be_between exclusive" do
    expect(5).to be_between(2,7).exclusive
    expect(3).to be_between(2,7).exclusive
    expect(6).to be_between(2,7).exclusive
  end

  it "match - expressões regulares" do
    expect("fulano@com.br").to match("..@..")
  end

  it "start_with" do
    expect("fulano de tal").to start_with("fulano")
    expect([1,2,3]).to start_with(1)
  end

  it "end_with" do
    expect("fulano de tal").to end_with("tal")
    expect([1,2,3]).to end_with(3)
  end

end
