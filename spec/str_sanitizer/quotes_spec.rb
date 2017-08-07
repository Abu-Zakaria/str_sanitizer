require "spec_helper"
require "str_sanitizer/quotes"

RSpec.describe StrSanitizer::Quotes do
  it "has a method named 'double_quote'" do
    expect(StrSanitizer::Quotes.respond_to? :double_quote).to eq(true)
  end
end
