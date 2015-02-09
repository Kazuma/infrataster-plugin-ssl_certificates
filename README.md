# Infrataster::Plugin::SslCertificates

Check SSL certificates plugin for [infrataster](https://github.com/ryotarai/infrataster)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'infrataster-plugin-ssl_certificates'
```

And then add the following line to your spec_helper.rb:

```ruby
reuire 'infrataster-plugin-ssl_certificates'
```

## Usage

```ruby
# spec/example_spec.rb
reuqire 'spec_helper'

describe server(:app) do
  describe domain('https://www.example.com') do
    it { expect(certificate.serial).to eq(1234567) }
    it { expect(certificate.not_after.to_s).to eq("2015-12-31 18:00:00 UTC") }
  end
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/infrataster-plugin-ssl_certificates/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request