class UsersController < ApplicationController
  def index
    @users = User.order('created_at DESC').limit(5)
  end
end
