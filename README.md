# Ipgeobase

![example workflow](https://github.com/PIechik/ipgeobase/actions/workflows/main.yml/badge.svg)
This gem recieves ip-adress and returns metadata for it. Gem uses https://ip-api.com/

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ipgeobase'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install ipgeobase

## Usage

```ruby
ip_meta = Ipgeobase.lookup("24.48.0.1")
ip_meta.city # Montreal
ip_meta.country # Canada
ip_meta.country_code # CA
ip_meta.lat # 45.6085
ip_meta.lon # -73.5493
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/PIechik/ipgeobase.
