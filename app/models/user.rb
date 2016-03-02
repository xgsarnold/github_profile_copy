# require 'httparty'
class User
  attr_reader :user
  def initialize(username)
    @user = get_response(username)
  end

  def get_response(username)
    @response = HTTParty.get("https://api.github.com/users/#{username}/repos")
  end

  def get_repo_name(position)
    @user[position][:name]
  end

  def get_repo_url(position)
    @user[position][:url]
  end

  def get_repo_description(position)
    @user[position][:description]
  end

  def get_updated_time(position)
    @user[position][:updated_at] - time.now
  end




end
