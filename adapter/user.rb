class User
  attr_reader :id, :first_name, :last_name, :full_name, :email

  def initialize
    @id = 1
    @first_name = "John"
    @last_name = "Doe"
    @full_name = "John Doe"
    @email = "jdoe@email.com"
  end
end
