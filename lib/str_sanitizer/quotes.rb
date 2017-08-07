class StrSanitizer
  module Quotes
    def self.included(base)
      base.send(:include, InstanceMethods)
      base.send(:extend, ClassMethods)
    end

    module InstanceMethods
    end

    module ClassMethods
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
end

