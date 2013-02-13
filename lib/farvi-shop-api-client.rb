require 'faraday_middleware'
require 'farvi-shop-api-client/version'
require 'farvi-shop-api-client/connection'
require 'farvi-shop-api-client/request'

require 'farvi-shop-api-client/orders'

module FarviShop
  module API
    class Client
      include FarviShop::API::Client::Orders

      attr_accessor :api_endpoint, :api_token, :per_page
      def initialize(api_endpoint, api_token, options={})
        @api_endpoint = api_endpoint
        @api_token = api_token
        @per_page = options.fetch(:per_page, 30)
      end
    end
  end
end
