require "spec_helper"
require "str_sanitizer/quotes"
require "str_sanitizer/quotes"

RSpec.describe StrSanitizer::Quotes do
  before(:each) do
    @class_methods = ExampleClass.new
  end

  it "has a method named 'double_quote'" do
    expect(@class_methods.respond_to? :double_quote).to eq(true)
  end

  it "has a method named 'single_quote'" do
    expect(@class_methods.respond_to? :single_quote).to eq(true)
  end

  it "returns string with double quotes escaped" do
    test_string = 'The nerd said, "Look!"'
    escaped_string = @class_methods.double_quote(test_string)

    expect(escaped_string).to eq('The nerd said, \\"Look!\\"')
  end

  it "returns string with single quotes escaped" do
    test_string = "They said, 'hello world!'"
    escaped_string = @class_methods.single_quote(test_string)

    expect(escaped_string).to eq("They said, \\'hello world!\\'")
  end

  it "returns string with both, single and double quotes escaped" do
    test_string = "The man says, \"Don't do it\""
    escaped_string = @class_methods.both_quotes(test_string)
    
    expect(escaped_string).to eq("The man says, \\\"Don\\'t do it\\\"")
  end

  it "doesn't do anything if no quote is found" do
    test_string = "Hey there!"
    double_quote_escaped = @class_methods.double_quote(test_string)
    single_quote_escaped = @class_methods.single_quote(test_string)
    both_quotes_escaped = @class_methods.both_quotes(test_string)

    expect(double_quote_escaped).to eq("Hey there!")
    expect(single_quote_escaped).to eq("Hey there!")
    expect(both_quotes_escaped).to eq("Hey there!")
  end
end

class ExampleClass
  include StrSanitizer::Quotes::ClassMethods
end
