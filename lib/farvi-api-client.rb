require 'faraday_middleware'
require "farvi-api-client/version"
require 'farvi-api-client/connection'
require 'farvi-api-client/request'

require 'farvi-api-client/delivery_methods'
require 'farvi-api-client/orders'
require 'farvi-api-client/payment_types'
require 'farvi-api-client/products'

module Farvi
  module API
    class Client
      include Farvi::API::Client::Connection
      include Farvi::API::Client::Request

      include Farvi::API::Client::DeliveryMethods
      include Farvi::API::Client::Orders
      include Farvi::API::Client::Products
      include Farvi::API::Client::PaymentTypes

      attr_accessor :api_endpoint, :api_token, :per_page
      def initialize(api_endpoint, api_token, options={})
        @api_endpoint = api_endpoint
        @api_token = api_token
        @per_page = options.fetch(:per_page, 30)
      end
    end
  end
end
