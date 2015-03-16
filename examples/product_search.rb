#!/usr/bin/env ruby

require 'pricesphere'

API_KEY = 'Your API Key'

product_attributes = {
  brand: 'Toshiba',
  site: 'newegg.com'
}

pricesphere = Pricesphere::Product.new(API_KEY)
# Products is an enumerator
products = pricesphere.with_attributes(product_attributes)
