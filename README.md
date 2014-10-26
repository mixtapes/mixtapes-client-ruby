# Mixtapes::Client

Mixtapes client written in Ruby. A Ruby wrapper to connect and authenticate with the Mixtapes API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mixtapes-client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mixtapes-client

## Usage

    # 1. Create a client:
    client = Mixtapes::Client.new(CLIENT_ID, CLIENT_URL, REDIRECT_URI)

    # 2. Redirect the user to the client authorization page:
    redirect(client.authorize_url)

    # 3. Set the token that's given back after the authorization:
    client.token = params[:code]

    # 4. Make calls to the API via this authorized connection:
    client.connection.get('/profiles/liquid')

## Contributing

1. Fork it ( https://github.com/mixtapes/mixtapes-client-ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
