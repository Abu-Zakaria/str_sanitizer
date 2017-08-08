class StrSanitizer
  module Quotes
    def double_quote(str)
      str.gsub(/"/, /\\"/.source)
    end

    def single_quote(str)
      str.gsub(/'/, /\\'/.source)
    end

    def both_quotes(str)
      single_quote(double_quote(str))
    end
  end
end

