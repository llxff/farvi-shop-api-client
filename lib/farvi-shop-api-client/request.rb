module FarviShop
  module API
    class Client
      module Request
        def request(method, path, options = {})
          token = options.delete(:api_token) || api_token

          response = connection.send(method) do |request|

            request.headers['Accept'] =  options.delete(:accept) || 'application/json'
            request.headers['X-Farvi-Token'] = token if token

            case method
              when :get
                options.merge!(:per_page => per_page) if per_page
                request.url(path, options)
              when :delete, :head
                request.url(path, options)
              when :patch, :post, :put
                request.url(path, options)
            end
          end

          response
        end

        def get(path, options = {})
          request(:get, path, options = {}).body
        end

        def post(path, options={})
          request(:post, path, options).body
        end

        def put(path, options={})
          request(:put, path, options).body
        end

        def delete(path, options={})
          request(:delete, path, options).body
        end
      end
    end
  end
end
