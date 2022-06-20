class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: [:show]
  def index
    @chatroom = Chatroom.all
  end

  def show
    @message = Message.new
  end

  def create
    @chatrooms = Chatroom.all
    recipient = User.find(params[:user])
    if chatroom_exist?(@chatrooms, recipient.id, current_user.id)
      chatroom = chatroom_exist?(@chatrooms, recipient.id, current_user.id)
      redirect_to chatroom_path(chatroom)
    else
      chatroom = Chatroom.new(recipient_id: recipient.id, sender_id: current_user.id)
      redirect_to chatroom_path(chatroom) if chatroom.save
    end
  end

  private

  # def chat_params
  #   params.require(:chat).permit(:sender_id, :recipient_id)
  # end

  def chatroom_exist?(chatrooms, recipient_id, sender_id)
    if !chatrooms.where(sender_id: sender_id).find_by_recipient_id(recipient_id).nil?
      return chatrooms.where(sender_id: sender_id).find_by_recipient_id(recipient_id)
    elsif !chatrooms.where(sender_id: recipient_id).find_by_recipient_id(sender_id).nil?
      return chatrooms.where(sender_id: recipient_id).find_by_recipient_id(sender_id)
    else
      return false
    end
  end

  def set_chatroom
    @chatroom = Chatroom.find(params[:id])
  end
end
