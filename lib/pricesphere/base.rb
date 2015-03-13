require 'uri'
require 'json'
require 'cgi'
require 'net/http'

module Pricesphere
  class Base
    def initialize(api_key = '', version = 'v1')
      raise Error.new("Missing API Key", 'You did not supply an API ey, please sign up for an account at https://www.pricesphere.com') if api_key == ''
      @api_key = api_key
      @version = version
    end

    private

    def get(endpoint, params)
      request_params = ""
      params.each do |name, value|
        request_params += "&#{CGI.escape(name.to_s)}=#{CGI.escape(value.to_s)}"
      end
      request_params.gsub!(/^&/, '')
      base_url = "https://www.pricesphere.com/api/#{@version}"
      request_url = "#{base_url}/#{endpoint}?#{request_params}&token=#{@api_key}"

      response = Net::HTTP.get(URI request_url)

      result = JSON.parse(response)
    end
  end
end