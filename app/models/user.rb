class User
  def initialize(name: nil)
    @user = get_response
  end

  def get_response(user)
    @response = Httparty.get "https://api.github.com/users/#{user}/repos"
  end


end
