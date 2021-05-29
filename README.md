# Easy Parser

Parse xlsx, csv or xls with a unified interface

## Installation

```bash
$ gem install easy_parser
```

Or add to your Gemfile:

```ruby
gem "easy_parser"
```

```bash
bundle install
```

## Usage

```ruby
EasyParser.process('my.xlsx', from_row: 3) do |row|
  puts row[0]
end
```

## Testing

To run the specs you need to execute, **in the root path of the gem**, the following command:

```bash
bundle exec guard
```

You need to put **all your tests** in the `/my_gem/spec/` directory.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credits

Thank you [contributors](https://github.com/emilioeduardob/easy_parser/graphs/contributors)!

Easy Parser is maintained by Dotech Software

## License

Easy Parser is © 2021 Dotech Software. It is free software and may be redistributed under the terms specified in the LICENSE file.
