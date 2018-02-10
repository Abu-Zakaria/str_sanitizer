[![Gem Version](https://badge.fury.io/rb/str_sanitizer.svg)](https://badge.fury.io/rb/str_sanitizer)
[![Build Status](https://travis-ci.org/JakariaBlaine/str_sanitizer.svg?branch=master)](https://travis-ci.org/JakariaBlaine/str_sanitizer)
[![Open Source Helpers](https://www.codetriage.com/jakariablaine/str_sanitizer/badges/users.svg)](https://www.codetriage.com/jakariablaine/str_sanitizer)
# StrSanitizer

[![Join the chat at https://gitter.im/str_sanitizer/Lobby](https://badges.gitter.im/str_sanitizer/Lobby.svg)](https://gitter.im/str_sanitizer/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Welcome to this gem. This gem is about String Sanitization. This gem sanitizes the string which is given.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'str_sanitizer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install str_sanitizer

## Usage

- To escape quotes of a string
  ```ruby
  require "str_sanitizer"

  hello = 'He said, "Hello!"'
  StrSanitizer.double_quote(hello) # => He said, \"Hello!\" 

  hello = "She said, 'Hello!'"
  StrSanitizer.single_quote(hello) # => She said, \'Hello!\'

  both_quotes = "They said, \"Don't do it!\""
  StrSanitizer.both_quotes(both_quotes) # => They said, \"Don\'t do it!\"
  ```
  You can also check if the string has any quote or not
  ```ruby
  no_quote = "Hello, there."
  single_quote = "It's going down."
  double_quote = "He said, \"Hello\""

  StrSanitizer.has_any_quote?(no_quote) # => nil
  StrSanitizer.has_both_quotes?(no_quote) # => nil

  StrSanitizer.has_single_quotes?(single_quote) # => true
  StrSanitizer.has_double_quotes?(double_quote) # => true
  ```

- To sanitize HTML Entities of a string
  ```ruby
  string = "<script>alert('Hola!!!')</script>"

  StrSanitizer.html_encode(string) # => &lt;script&gt;alert('Hola!!!')&lt;script&gt;
  ```
  You can also decode the a string with encoded HTML entities
  ```ruby
  string = "&lt;script&gt;alert('Hola!!!')&lt;script&gt"

  StrSanitizer.html_decode(string) # => <script>alert('Hola!!!')</script>
  ```
  Note: `htmlentities` was used for encoding and decoding process

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/JakariaBlaine/str_sanitizer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the StrSanitizer project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/JakariaBlaine/str_sanitizer/blob/master/CODE_OF_CONDUCT.md).
