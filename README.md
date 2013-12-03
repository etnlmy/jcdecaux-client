# JCDecauxClient

A Ruby API Wrapper for the JCDecaux self-service bicycles [open data platform](https://developer.jcdecaux.com).

## Installation

Add this line to your application's Gemfile:

    gem 'jcdecaux-client'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jcdecaux-client

## Usage

#### Initialize the client with your API key:

``` ruby

client = JCDecauxClient.new('xxxxxxxxxxxxxxxx')

```

#### Get the contracts:

``` ruby

contracts = client.contracts

```

#### Get all the stations:

``` ruby

stations = client.stations

```

#### Get the stations for a given contract:

``` ruby

station = client.stations(contract_name: "Nantes")

```

#### Get a particular station:

``` ruby

station = client.station(station_number: 38, contract_name: "Nantes")

```



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
