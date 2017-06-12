class MessagesController < ApplicationController


  def detail
    # binding.pry
    @messages = Message.where('(user_id = ?) or (receiver_id = ?) and (user_id = ?) or (receiver_id = ?)' , current_user.id,current_user.id,params[:user_id],params[:user_id]).order('created_at DESC')
    @message = Message.new
    @user = User.find(params[:user_id])
  end

  def index
    @messages = Message.where(receiver_id: current_user.id).order('created_at DESC')
  end

  def create
    Message.create(create_params)
    redirect_to action: :detail
  end

  private
  def create_params
    params.require(:message).permit(:body).merge(user_id: current_user.id,receiver_id: params[:user_id])
  end

end

