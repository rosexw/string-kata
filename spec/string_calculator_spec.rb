#Advanced developers: Uncomment the following understand more about the RSpec "focus" filter
#require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require 'string_calculator'

# The top of your testing block
# More examples of tests can be found here: https://github.com/rspec/rspec-expectations
RSpec.describe StringCalculator, "#add" do

  it "returns 0 for empty string" do
    expect(StringCalculator.add("")).to eql(0)
  end

  # more tests go here
  it "returns the value for a single digit" do
    (0..9).each do |digit|
      expect(StringCalculator.add(digit.to_s)).to eql(digit)
    end
  end

  it "returns the sum of two digits when separated by a comma" do
    expect(StringCalculator.add("1, 2")).to eql(3)
    expect(StringCalculator.add("7, 9")).to eql(16)
  end

  it "returns the sum of two strings of digits when separated by a comma" do
    expect(StringCalculator.add("12, 45")).to eql(57)
    expect(StringCalculator.add("45, 159")).to eql(204)
  end

  it "returns the sum of multiple strings of digits when separated by a comma" do
    expect(StringCalculator.add("1558, 2, 2442")).to eql(4002)
    expect(StringCalculator.add("15, 22, 45, 79")).to eql(161)
  end

  it "handles newlines like they were commas" do
    expect(StringCalculator.add("1\n2, 3")).to eql(6)
  end

  it "allows delimiters to be set" do
    expect(StringCalculator.add("//;\n2;5")).to eql(7)
  end

  # 8
  # it "raises error if it finds a negative number" do
  #   expect ( raise )
  # end

end
