# require 'httparty'
class User
  def initialize(name: nil)
    @user = get_response(:name)
  end

  def get_response(user)
    @response = HTTParty.get("https://api.github.com/users/#{@user}/repos")
  end


end
