require "rubygems"
require "json"
require "net/http"
require "uri"

class JCDecauxClient

  def initialize(api_key)
    @base_url = 'https://api.jcdecaux.com/vls/v1/'
    @api_key = api_key
  end
  
  def contracts
    addr = "contracts?apiKey=#{@api_key}"    
    handle_request(addr)     
  end
  
  def station(args={})
    station_number = args[:station_number]
    contract_name = args[:contract_name]
    addr = "stations/#{station_number}?contract=#{contract_name}&apiKey=#{@api_key}"
    handle_request(addr)
  end
  
  def stations(args={})
    if args.empty?
      addr = "stations?apiKey=#{@api_key}"
    else  
      contract_name = args[:contract_name]
      addr = "stations?contract=#{contract_name}&apiKey=#{@api_key}"
    end
    handle_request(addr)
  end
  
  private
  
    def handle_request(addr)  
      uri = URI.parse("#{@base_url}#{addr}")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      request = Net::HTTP::Get.new(uri.request_uri)
      response = http.request(request)
      if response.code == "200"
        JSON.parse(response.body)
      end    
    end
end