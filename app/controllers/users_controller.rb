class UsersController < ApplicationController
  def index
    @users = User.order('created_at DESC').limit(5)
  end

  def show
    @user = User.find(params[:id])
  end

  def search
  end

  def search_result
    @users = User.where("adress1 = ?  and age > ? and age < ? and work = ?", params[:add], params[:agemin], params[:agemax], params[:work])
  end

end
