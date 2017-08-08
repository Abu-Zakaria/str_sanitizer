require "spec_helper"
require "str_sanitizer/quotes"
require "str_sanitizer/quotes"

RSpec.describe StrSanitizer::Quotes do
  before(:each) do
    @methods = ExampleClass
  end

  it "has a method named 'double_quote'" do
    expect(@methods.respond_to? :double_quote).to eq(true)
  end

  it "has a method named 'single_quote'" do
    expect(@methods.respond_to? :single_quote).to eq(true)
  end

  it "has a method named 'has_single_quote?'" do
    expect(@methods.respond_to? :has_single_quote?).to eq(true)
  end

  it "has a method named 'has_double_quote?'" do
    expect(@methods.respond_to? :has_double_quote?).to eq(true)
  end

  it "has a method named 'has_both_quotes?'" do
    expect(@methods.respond_to? :has_both_quotes?).to eq(true)
  end

  it "has a method named 'has_any_quote?'" do
    expect(@methods.respond_to? :has_any_quote?).to eq(true)
  end

  it "returns string with double quotes escaped" do
    test_string = 'The nerd said, "Look!"'
    escaped_string = @methods.double_quote(test_string)

    expect(escaped_string).to eq('The nerd said, \\"Look!\\"')
  end

  it "returns string with single quotes escaped" do
    test_string = "They said, 'hello world!'"
    escaped_string = @methods.single_quote(test_string)

    expect(escaped_string).to eq("They said, \\'hello world!\\'")
  end

  it "returns string with both, single and double quotes escaped" do
    test_string = "The man says, \"Don't do it\""
    escaped_string = @methods.both_quotes(test_string)
    
    expect(escaped_string).to eq("The man says, \\\"Don\\'t do it\\\"")
  end

  it "returns nil or true value if string has single quote or not" do
    no_quote = "Hello there"

    expect(@methods.has_single_quote?(no_quote)).to eq(nil)

    has_quote = "He said, 'hello there'"

    expect(@methods.has_single_quote?(has_quote)). to eq(true)
  end

  it "returns nil or true value if string has double quote or not" do
    no_quote = "Hello there"

    expect(@methods.has_double_quote?(no_quote)).to eq(nil)

    has_quote = "He said, \"hello there\""

    expect(@methods.has_double_quote?(has_quote)). to eq(true)
  end

  it "returns nil or true value if string has both, double and single quote or not" do
    no_quote = "Hello there"

    expect(@methods.has_both_quotes?(no_quote)).to eq(nil)

    has_double_quote = "He said, \"hello there\""

    expect(@methods.has_both_quotes?(has_double_quote)). to eq(nil)

    has_single_quote = "He said, 'hello there'"

    expect(@methods.has_both_quotes?(has_single_quote)). to eq(nil)

    has_both_quotes = "He said, \"Don't do it\""

    expect(@methods.has_both_quotes?(has_both_quotes)). to eq(true)
  end

  it "returns true or nil value if the string has any quotes or not" do
    no_quote = "hey there"

    expect(@methods.has_any_quote?(no_quote)).to be(nil)

    has_single_quote = "He said, 'Hello'"

    expect(@methods.has_any_quote?(has_single_quote)).to eq(true)

    has_double_quote = "She said, \"Hello\""

    expect(@methods.has_any_quote?(has_double_quote)).to eq(true)

    has_both_quotes = "They said, \"Don't go there\""

    expect(@methods.has_any_quote?(has_both_quotes)).to eq(true)
  end

  it "doesn't do anything if no quote is found" do
    test_string = "Hey there!"
    double_quote_escaped = @methods.double_quote(test_string)
    single_quote_escaped = @methods.single_quote(test_string)
    both_quotes_escaped = @methods.both_quotes(test_string)

    expect(double_quote_escaped).to eq("Hey there!")
    expect(single_quote_escaped).to eq("Hey there!")
    expect(both_quotes_escaped).to eq("Hey there!")
  end
end

class ExampleClass
  extend StrSanitizer::Quotes
end
