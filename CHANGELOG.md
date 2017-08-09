## StrSanitizer 0.2.0 (August 09, 2017) ##

* Changed the structure of the module in `lib/str_sanitizer/quotes.rb` file. Removed the `InstanceMethods` module and `included` class method of `Quotes` module. Remove the `ClassMethods` class too from `Quotes` module. Re-structured the whole module.
* Use `extend` instead of `include` in `StrSanitizer` class for using other modules methods. (To use the instance methods of any modules as class methods)
* Add documentation about the methods in `Quotes` module.

## StrSanitizer 0.1.1 (August 07, 2017) ##

*  In v0.1.0, the single_quote method wasn't working properly. This release fixes it.
