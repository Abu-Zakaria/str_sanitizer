require "spec_helper"
require "str_sanitizer/html_entities"

RSpec.describe StrSanitizer::HtmlEntities do
  before(:each) do
    @methods = ExampleClass

    @encode_string = "<div>Hello world</div>"
    @decode_string = "&lt;div&gt;Hello world&lt;/div&gt;"
  end

  it "has some method for encoding and decoding" do
    expect(@methods.respond_to? :encode).to eq(true)
    expect(@methods.respond_to? :decode).to eq(true)
  end

  it "returns a encoded string" do
    encoded = @methods.encode(@encode_string)
    # The encoded string was done by `htmlentities` gem manually and pasted in here
    expect(encoded).to eq("&lt;div&gt;Hello world&lt;/div&gt;")
  end

  it "returns a decoded string" do
    decoded = @methods.decode(@decode_string)
    # The decoded string was done by `htmlentities` gem manually and pasted in here
    expect(decoded).to eq("<div>Hello world</div>")
  end

  it "doesn't throw any exception if nothing was there to encode and decode" do
    simple_string = "Hello world"

    expect(@methods.encode simple_string).to eq(simple_string)
    expect(@methods.decode simple_string).to eq(simple_string)
  end
end

class ExampleClass
  extend StrSanitizer::HtmlEntities
end
