
class StrSanitizer

  # This module sanitizes the given string by adding backslash (\) before quote
  # It also can check if a string has any quote or not.
  #
  # Author:     Jakaria (mailto: jakariablaine120@gmail.com)
  # Copyright:  Copyright (c) 2017 Jakaria
  
  module Quotes
    
    # Find any double quote (") in a string and add backslash (\) before the double quote.
    # 
    # Params:
    # +str+:: A +string+ which has double quote that needs to be escaped.
    #
    # Returns:
    # +String+:: The string which was passed to the parameter with escaped double quotes.
    def double_quote(str)
      str.gsub(/"/, /\\"/.source)
    end

    # Find any single quote (') in a string and add backslash (\) before the single quote.
    # 
    # Params:
    # +str+:: A +string+ which has single quote that needs to be escaped.
    #
    # Returns:
    # +String+:: The string which was passed to the parameter with escaped single quotes.
    def single_quote(str)
      str.gsub(/'/, /\\'/.source)
    end

    # Find any single quote (') and double quote (") in a string and add backslash (\)
    # before the single quote and double quote (").
    # 
    # Params:
    # +str+:: A +string+ which has single quote and double quote that need to be escaped.
    #
    # Returns:
    # +String+:: The string which was passed to the parameter with escaped single quote and
    # double quote.
    def both_quotes(str)
      single_quote(double_quote(str))
    end

    # Search through the given string to see if it has any single quote (').
    #
    # Params:
    # +str+:: A +string+ which needs to be checked for single quote.
    # +pos+:: From where it should start searching. +Default+ is 0.
    #
    # Returns:
    # +Boolean|Nil+:: Returns true if it has any single quote, nil for no single quote
    def has_single_quote?(str, pos = 0)
      true if str.match("'", pos)
    end

    # Search through the given string to see if it has any double quote (").
    #
    # Params:
    # +str+:: A +string+ which needs to be checked for double quote.
    # +pos+:: From where it should start searching. +Default+ is 0.
    #
    # Returns:
    # +Boolean|Nil+:: Returns true if it has any double quote, nil for no double quote
    def has_double_quote?(str, pos = 0)
      true if str.match('"', pos)
    end

    # Search through the given string to see if it has both, single (') and double quote (").
    #
    # Params:
    # +str+:: A +string+ which needs to be checked for both quotes.
    # +pos+:: From where it should start searching. +Default+ is 0.
    #
    # Returns:
    # +Boolean|Nil+:: Returns true if it has both quotes, nil for no quote.
    def has_both_quotes?(str, pos = 0)
      true if has_single_quote?(str, pos) && has_double_quote?(str, pos)
    end

    # Search through the given string to see if it has any quote.
    #
    # Params:
    # +str+:: A +string+ which needs to be checked for any quote.
    # +pos+:: From where it should start searching. +Default+ is 0.
    #
    # Returns:
    # +Boolean|Nil+:: Returns true if it has any quote, nil for no quote
    def has_any_quote?(str, pos = 0)
      true if has_single_quote?(str, pos) || has_double_quote?(str, pos)
    end
  end
end

