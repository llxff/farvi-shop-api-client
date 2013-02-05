module Farvi
  module API
    class Client
      module PaymentTypes
        def payment_types(options={})
          get("payment_types", options)['payment_types']
        end

        def payment_type(payment_type_id, options={})
          get("payment_types/#{payment_type_id}", options)
        end

        def new_payment_type(options={})
          get("payment_types/new", options)
        end

        def create_payment_type(options={})
          post("payment_types/", options)
        end

        def update_payment_type(payment_type_id, options={})
          post("payment_types/#{payment_type_id}", options)
        end

        def delete_payment_type(payment_type_id, options={})
          delete("payment_types/#{payment_type_id}", options)
        end
      end
    end
  end
end