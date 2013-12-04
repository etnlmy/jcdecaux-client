require 'spec_helper'
require 'jcdecaux-client'

describe JCDecauxClient do

  before do
    @client = JCDecauxClient.new(ENV['api_key'])
    expect(@client).not_to be_nil
  end

  it "retrieves the contracts" do
    contracts = @client.contracts
    expect(contracts).not_to be_nil
  end
  
  it "retrieves the stations" do
    stations = @client.stations
    expect(stations).not_to be_nil
  end
  
  it "retrieves the stations of a given contract" do
    stations = @client.stations(contract_name: "Nantes")
    expect(stations).not_to be_nil
  end
  
  it "retrieves a particular station" do
    station = @client.station(station_number: 38, contract_name: "Nantes")
    expect(station).not_to be_nil
  end
  
end