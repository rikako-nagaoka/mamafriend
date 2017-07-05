class UsersController < ApplicationController
  def index
    @users = User.order('created_at DESC').limit(5)
  end

  def show
    @user = User.find(params[:id])
    @group = Group.new
  end

  def search
  end

  def search_result
    @users = User.where("(adress1 = ?) or (age >= ?) and (age <= ?) or (work = ?)", params[:add], params[:agemin], params[:agemax], params[:work])
  end

  def new
    # @user = User.new
    @user = current_user
  end

  def update
    current_user.update(update_params)
    redirect_to root_path
  end



private
  def update_params
    params.require(:user).permit(:nickname, :adress1, :adress2, :age, :numchild, :work, :private, :frequeny, :ivent, :lastname, :comment)
  end

end
