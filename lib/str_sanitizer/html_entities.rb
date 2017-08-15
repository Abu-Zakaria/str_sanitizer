require 'htmlentities'

class StrSanitizer

  # This modules encodes and decodes HTML Entities of a string
  #
  # Author:     Jakaria (mailto: jakariablaine120@gmail.com)
  # Copyright:  Copyright (c) 2017 Jakaria
  module HtmlEntities

    # Instantiate htmlentities class to use it for encoding and decoding html entities
    #
    # Params:
    # +none+
    def initizalize
      @coder = HTMLEntities.new
    end

    # Encodes the HTML entities of the given string
    #
    # Params:
    # +str+:: A +string+ which needs to be escaped from html entities
    #
    # Returns:
    # +string+:: An HTML entities escaped +string+
    def encode(string)
      @coder = HTMLEntities.new
      @coder.encode(string)
    end

    # Decodes the HTML entities of the given string
    #
    # Params:
    # +str+:: A +string+ which needs to be decoded to html entities
    #
    # Returns:
    # +string+:: A string with decoded HTML entities +string+
    def decode(string)
      @coder = HTMLEntities.new
      @coder.decode(string)
    end
  end
end
