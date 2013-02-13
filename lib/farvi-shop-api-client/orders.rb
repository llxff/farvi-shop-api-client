module FarviShop
  module API
    class Client
      module Orders
        def create_order(options={})
          post("orders", options)
        end
      end
    end
  end
end
