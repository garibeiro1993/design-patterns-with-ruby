require_relative "./paypal_lib"

class PaypalAdapter
  class << self
    def subscribe(user)
      PaypalLib.subscription(email: user.email)
    end

    def register(user)
      PaypalLib.customer(
        fname: user.first_name,
        lname: user.last_name
      )
    end
  end
end
