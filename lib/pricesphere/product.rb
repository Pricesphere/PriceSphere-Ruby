module Pricesphere
  class Product < Base
    def search(term = '')
      return {} if term == ''
      with_attributes( { :search  => term } )
    end

    def with_attributes(attributes = {})
      return {} if attributes == {}
      page = 1
      last_page = false
      Enumerator.new do |yielder|
        loop do
          raise StopIteration if last_page
          result = get(attributes.merge({:page => page}))

          if page == result['meta']['pages'].to_i
            last_page = true
          end
          page += 1
          result['products'].each do |product|
            yielder.yield product
          end
        end

      end
    end

    private

    def get(params)
      super('products', params)
    end
  end
end