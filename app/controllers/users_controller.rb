class UsersController < ApplicationController
  def search
    @search = User.new(name: params[:name])
  end

  def result

  end
end
