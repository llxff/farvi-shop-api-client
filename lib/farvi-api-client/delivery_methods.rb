module Farvi
  module API
    class Client
      module DeliveryMethods
        def create_delivery_method(options={})
          post('delivery_methods', options)
        end

        def update_delivery_method(id, options={})
          put("delivery_methods/#{id}", options)
        end

        def delete_delivery_method(id, options={})
          delete("delivery_methods/#{id}", options)
        end
      end
    end
  end
end