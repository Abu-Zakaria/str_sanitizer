require "spec_helper"

RSpec.describe StrSanitizer do
  it "has a version number" do
    expect(StrSanitizer::VERSION).not_to be nil
  end

  it "return a sanitized string with escaped double-quote" do
    skip
    test_string = 'He said, "Look!"'
    sanitized_string = StrSanitizer.double_quote(test_string) 

    expect(sanitized_string).to equal('He said, \"Look!\"')
  end
end
