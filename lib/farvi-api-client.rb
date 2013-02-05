require 'faraday_middleware'
require "farvi-api-client/version"

require 'farvi-api-client/connection'
require 'farvi-api-client/request'

require 'farvi-api-client/products'
require 'farvi-api-client/variants'
require 'farvi-api-client/orders'
require 'farvi-api-client/taxonomies'
require 'farvi-api-client/addresses'
require 'farvi-api-client/countries'
require 'farvi-api-client/zones'
require 'farvi-api-client/properties'
require 'farvi-api-client/line_items'
require 'farvi-api-client/return_authorizations'
require 'farvi-api-client/taxons'
require 'farvi-api-client/payments'
require 'farvi-api-client/shipments'
require 'farvi-api-client/payment_types'

module Farvi
  module API
    class Client
      include Farvi::API::Client::Connection
      include Farvi::API::Client::Request

      include Farvi::API::Client::Products
      include Farvi::API::Client::Variants
      include Farvi::API::Client::Orders
      include Farvi::API::Client::Taxonomies
      include Farvi::API::Client::Addresses
      include Farvi::API::Client::Countries
      include Farvi::API::Client::Zones
      include Farvi::API::Client::Properties
      include Farvi::API::Client::LineItems
      include Farvi::API::Client::ReturnAuthorizations
      include Farvi::API::Client::Taxons
      include Farvi::API::Client::Payments
      include Farvi::API::Client::Shipments

      attr_accessor :api_endpoint, :api_token, :per_page
      def initialize(api_endpoint, api_token, options={})
        @api_endpoint = api_endpoint
        @api_token = api_token
        @per_page = options.fetch(:per_page, 30)
      end
    end
  end
end
