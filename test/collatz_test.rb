require "../app/collatz.rb"

describe Collatz do

	before(:all) do
		@collatz = Collatz.new
	end

	it "when pass nil the algoritm should return #0" do
		@collatz.run(nil).should == 0
	end

	it "when pass #13 as fist number the algoritm will be 10 iterations for end in #1" do
		@collatz.run(13).should == 10
	end

	it "when pass #40 as fist number the algoritm will be 9 iterations for end in #1" do
		@collatz.run(40).should == 9
	end

	it "when pass #20 as fist number the algoritm will be 8 iterations for end in #1" do
		@collatz.run(20).should == 8
	end
end