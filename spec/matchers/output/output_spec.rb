describe "Matcher output" do
	it { expect{ puts "antonio" }.to output.to_stdout }
	it { expect{ print "antonio" }.to output("antonio").to_stdout }
	it { expect{ puts "antonio carlos" }.to output(/antonio/).to_stdout }
 
  it { expect{ warn "antonio" }.to output.to_stderr }
	it { expect{ warn "antonio" }.to output("antonio\n").to_stderr }
	it { expect{ warn "antonio carlos" }.to output(/antonio/).to_stderr }
end