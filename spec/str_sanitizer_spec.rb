require "spec_helper"

RSpec.describe StrSanitizer do
  it "has a version number" do
    expect(StrSanitizer::VERSION).not_to be nil
  end

  it "can invoke the methods of Quotes module" do
    expect(StrSanitizer.respond_to? :double_quote).to eq true
    expect(StrSanitizer.respond_to? :single_quote).to eq true
    expect(StrSanitizer.respond_to? :both_quotes).to eq true
    expect(StrSanitizer.respond_to? :has_single_quote?).to eq true
    expect(StrSanitizer.respond_to? :has_double_quote?).to eq true
    expect(StrSanitizer.respond_to? :has_both_quotes?).to eq true
    expect(StrSanitizer.respond_to? :has_any_quote?).to eq true
  end

  it "can invoke the methods of HtmlEntities module" do
    expect(StrSanitizer.respond_to? :html_encode).to eq true
    expect(StrSanitizer.respond_to? :html_decode).to eq true
  end
end
