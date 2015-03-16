#!/usr/bin/env ruby

require 'pricesphere'

API_KEY = 'Your API Key'


pricesphere = Pricesphere::Watch.new(API_KEY)

pricesphere_product_id = 1
pricesphere.register(pricesphere_product_id, 'http://www.example.com/callback_url', {my_id: 10})
