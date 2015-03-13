module Pricesphere
  class Product < Base
    def search(term = '')
      return {} if term == ''
      with_attributes( search: term )
    end

    def with_attributes(attributes = {})
      return {} if attributes == {}

      get(attributes)
    end

    private

    def get(params)
      super('products', params)
    end
  end
end