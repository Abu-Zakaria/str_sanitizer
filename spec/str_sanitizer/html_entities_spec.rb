require "spec_helper"
require "str_sanitizer/html_entities"

RSpec.describe StrSanitizer::HtmlEntities do
  before(:each) do
    @module = ExampleClass

    @encode_string = "<div>Hello world</div>"
    @decode_string = "&lt;div&gt;Hello world&lt;/div&gt;"
  end

  it "has some method for encoding and decoding" do
    expect(@module.respond_to? :html_encode).to eq(true)
    expect(@module.respond_to? :html_decode).to eq(true)
  end

  it "returns a encoded string" do
    encoded = @module.html_encode(@encode_string)
    # The encoded string was done by `htmlentities` gem manually and pasted in here
    expect(encoded).to eq("&lt;div&gt;Hello world&lt;/div&gt;")

    # With option

    encoded = @module.html_encode(@encode_string, :decimal)
    expect(encoded).to eq("&#60;div&#62;Hello world&#60;/div&#62;")

    encoded = @module.html_encode(@encode_string, :hexadecimal)
    expect(encoded).to eq("&#x3c;div&#x3e;Hello world&#x3c;/div&#x3e;")
  end

  it "returns a decoded string" do
    decoded = @module.html_decode(@decode_string)
    # The decoded string was done by `htmlentities` gem manually and pasted in here
    expect(decoded).to eq("<div>Hello world</div>")
  end

  it "doesn't throw any exception if nothing was there to encode and decode" do
    simple_string = "Hello world"

    expect(@module.html_encode simple_string).to eq(simple_string)
    expect(@module.html_decode simple_string).to eq(simple_string)
  end
end

class ExampleClass
  extend StrSanitizer::HtmlEntities
end
