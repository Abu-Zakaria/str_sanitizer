require "spec_helper"

RSpec.describe StrSanitizer do
  it "has a version number" do
    expect(StrSanitizer::VERSION).not_to be nil
  end

  it "has a method named 'double_quote'" do
    expect(StrSanitizer.respond_to? :double_quote).to eq true
  end

  it "return a sanitized string with escaped double-quote" do
    test_string = 'He said, "Look!"'
    sanitized_string = StrSanitizer.double_quote(test_string) 

    expect(sanitized_string).to eq('He said, \"Look!\"')
  end
end
