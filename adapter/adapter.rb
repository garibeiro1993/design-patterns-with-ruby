require_relative "./paypal_adapter"
require_relative "./braintree_adapter"
require_relative "./user"

# Client code is decoupled fron any 3rd party library.
class ClientApp
  def self.call(platform:, user:)
    platform.subscribe(user)
    platform.register(user)
  end
end

ClientApp.call(platform: BraintreeAdapter, user: User.new)
# ClientApp.call(platform: PaypalAdapter, user: User.new)
