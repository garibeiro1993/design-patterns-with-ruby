class UserBase
  def first_name = raise("not implemented error")
  def last_name = raise("not implemented error")
end

class Admin < UserBase; end
class Member < UserBase; end
class Guest < UserBase; end

class UserFactory
  def call(user_type)
    if user_type == "admin"
      Admin.new
    elsif user_type == "member"
      Member.new
    elsif user_type == "guest"
      Guest.new
    else
      raise("unknown user type")
    end
  end
end

class Endpoint
  def home(params)
    user = UserFactory.call(params[:user_type])
    { name: full_name }.to_json
  end

  def home(params)
    user = UserFactory.call(params[:user_type])
    { first_name: user.first_name }.to_json
  end
end