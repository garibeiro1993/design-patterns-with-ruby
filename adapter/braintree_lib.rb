class BraintreeLib
  class << self
    def user(full_name:)
      puts "Creating user #{full_name}..."
    end

    def subscribe(external_id:)
      puts "Creating subscription for ID: #{external_id}..."
    end
  end
end
