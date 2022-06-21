class MessagesController < ApplicationController
  # before_action :set_message, only: [:create]
  skip_before_action :authenticate_user!, only: [:create]

  def index
    @users = User.all
    @messages = Message.all
  end

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      #@chatroom.last_message_at = new DateTime();
      #@chatroom.last_message_from = current_user;
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: { message: @message })
      )
      head :ok
    else
      render "chatrooms/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:user_id, :chatroom_id, :content)
  end

  # def set_message
  #   @chatroom = Chatroom.find(params[:chatroom_id])
  # end
end
