class UsersController < ApplicationController
  def search
    # @search = User.new(name: params[:name])
  end

  def result
    @result = User.new(params[:username])
  end
end
