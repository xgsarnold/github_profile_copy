require 'test_helper'
require 'byebug'

# Begin Monkey Patch
class User
  attr_reader :user
  def initialize(name:)
    @user = get_response(:name)
  end

  def get_response(user)
    mock_user = File.read("./test/fixtures/user.json")
    @response = JSON.parse(mock_user)
  end
end

# End Monkey Patch

class UserTest < ActionController::TestCase
  test "user class exists" do
    assert User
  end

  test "get user name and repos" do
    u = User.new(name: "xgsarnold")
    assert_equal "xgsarnold", u.user[0]["owner"]["login"]
    assert u.user[0]["name"].include?("asdf")
  end
end
