require "spec_helper"

RSpec.describe StrSanitizer do
  it "has a version number" do
    expect(StrSanitizer::VERSION).not_to be nil
  end

  it "has a method named 'double_quote'" do
    expect(StrSanitizer.respond_to? :double_quote).to eq true
  end

  it "has a method named 'single_quote'" do
    expect(StrSanitizer.respond_to? :single_quote).to eq true
  end

  it "has a method named 'both_quotes'" do
    expect(StrSanitizer.respond_to? :both_quotes).to eq true
  end

  it "returns a sanitized string with escaped double-quote" do
    test_string = 'He said, "Look!"'
    sanitized_string = StrSanitizer.double_quote(test_string) 

    expect(sanitized_string).to eq('He said, \\"Look!\\"')
  end


  it "returns a sanitized string with escaped single-quote" do
    test_string = "He said, 'Look!'"
    sanitized_string = StrSanitizer.single_quote(test_string)

    expect(sanitized_string).to eq("He said, \\'Look!\\'")
  end
end
