class MessagesController < ApplicationController

  def index
    @group = Group.find(params[:group_id])
    @messages = @group.messages #.order(created_at DESC)
    @message = Message.new
    @users = @group.users
  end

  # def detail
  #   # binding.pry
  #   @messages = Message.where('(user_id = ?) or (receiver_id = ?) and (user_id = ?) or (receiver_id = ?)' , current_user.id,current_user.id,params[:user_id],params[:user_id]).order('created_at DESC')
  #   @message = Message.new
  #   @user = User.find(params[:user_id])
  # end

  # # def index
  # #   @messages = Message.where(receiver_id: current_user.id).order('created_at DESC')
  # # end

  def create
    @group = Group.find(params[:group_id])
    @messages = @group.messages
    Message.create(create_params)


  end

  private
  def create_params
    params.require(:message).permit(:body, :group_id).merge(user_id: current_user.id)
  end

end

