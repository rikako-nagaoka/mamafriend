class MessagesController < ApplicationController

  def show
    @messages = Message.where("(sender_id = ?) and (receiver_id = ?)", params[:sender],params[:receiver]).order('created_at DESC')
    @message = Message.new
  end

  def create
    Message.create(create_params)
    redirect_to '/messages/show'
  end

  private
  def create_params
    params.require(:message).permit(:message)
  end

end

