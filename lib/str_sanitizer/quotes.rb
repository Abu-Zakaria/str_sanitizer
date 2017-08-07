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
        str.gsub!(/"/, '\"')
      end

      def single_quote(str)
        str.gsub!(/'/, "\'")
      end
    end
  end
end

