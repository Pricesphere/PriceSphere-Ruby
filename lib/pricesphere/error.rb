module Pricesphere
  class Error < StandardError
      attr_reader :type
      attr_reader :message
      attr_reader :param

      def initialize(type=nil, message=nil, param=nil)
          @message = 'Error: ' + type + ' Message: ' + message
          @message += ' Failed at parameter: ' + param if not param.nil?
      end
  end
end