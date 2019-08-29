# Lit Ipsum
[![Gem Version](https://badge.fury.io/rb/lit_ipsum.svg)](https://badge.fury.io/rb/lit_ipsum)

This gem offers filler text from classical works of literature in place of standard "lorem ipsum" text. This can be useful for adding filler text for mockups and screenshots for new projects.

## Installation

Install the gem locally with the following command:

```bash
gem install lit_ipsum
```

## Usage

Add this line to your application's Gemfile:

```ruby
gem 'lit_ipsum', :git=> 'https://github.com/bergbergs/lit_ipsum.git', :branch => 'master'
```

And then require the gem whereever you plan to use it.

```ruby
require 'lit_ipsum'

LitIpsum::Austen::PrideAndPrejudice.sentences(3) #=> "Other schemes, too, came into her head. As often as I can. I cannot think so very ill of Wickham."
LitIpsum::Austen::PrideAndPrejudice.words(7)     #=> "Indeed, Jane, you ought to believe me."

LitIpsum::Doyle::SherlockHolmes.sentences(2)     #=> "And how in the world did you find them? It is half-past ten now."
LitIpsum::Doyle::SherlockHolmes.words(5)         #=> "Yes, it did. Get out!"

LitIpsum::Austen::PrideAndPrejudice.sentences(3, repeat: 2) 
#"Other schemes, too, came into her head. As often as I can. I cannot think so very ill of Wickham."
#"Other schemes, too, came into her head. As often as I can. I cannot think so very ill of Wickham."

LitIpsum::Austen::PrideAndPrejudice.words(7, repeat: 2)
#"Indeed, Jane, you ought to believe me."
#"Indeed, Jane, you ought to believe me."

LitIpsum::Doyle::SherlockHolmes.sentences(2, repeat: 2)
#"And how in the world did you find them? It is half-past ten now."
#"And how in the world did you find them? It is half-past ten now."

LitIpsum::Doyle::SherlockHolmes.words(5, repeat: 2)
#"Yes, it did. Get out!"
#"Yes, it did. Get out!"
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bergbergs/lit_ipsum. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LitIpsum project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/bergbergs/lit_ipsum/blob/master/CODE_OF_CONDUCT.md).
