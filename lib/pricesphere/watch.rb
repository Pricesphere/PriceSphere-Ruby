module Pricesphere
  class Watch < Base

    def register(product_id, webhook_path, callback_params = {})
      uri = URI.parse(Pricesphere.base_url)
      http = Net::HTTP.new(uri.host, uri.port)
      if Pricesphere.base_url =~ /\Ahttps:/
        http.use_ssl = true
      end

      request = Net::HTTP::Post.new("/api/#{@version}/watches")
      request.add_field('Content-Type', 'application/json')
      request.body = {
        watch: {
          product_id: product_id,
          webhook_path: webhook_path,
          webhook_attributes: callback_params.to_json
        },
        token: @api_key
      }.to_json

      response = http.request(request)
    end

    private

    
  end
end