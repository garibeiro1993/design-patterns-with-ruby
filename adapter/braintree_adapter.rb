require_relative "./braintree_lib"

class BraintreeAdapter
  class << self
    def subscribe(user)
      BraintreeLib.subscribe(external_id: user.id)
    end

    def register(user)
      BraintreeLib.user(full_name: user.full_name)
    end
  end
end
