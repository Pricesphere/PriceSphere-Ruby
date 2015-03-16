require 'pricesphere/version'
require 'pricesphere/error'
require 'pricesphere/base'
require 'pricesphere/product'
require 'pricesphere/watch'
module Pricesphere

  def self.base_url
    @base_url ||= "https://www.pricesphere.com"
  end

  def self.base_url= url
    @base_url = url
  end
end
