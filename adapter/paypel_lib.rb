class PaypalLib
  class << self
    def subscription(email:)
      puts "Creating subscription for #{email}..."
    end

    def customer(fname:, lname:)
      puts "Creating customer for #{fname} #{lname}..."
    end
  end
end
