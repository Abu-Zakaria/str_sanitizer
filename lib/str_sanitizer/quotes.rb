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

    def has_single_quote?(str, pos = 0)
      true if str.match("'", pos)
    end

    def has_double_quote?(str, pos = 0)
      true if str.match('"', pos)
    end
  end
end

