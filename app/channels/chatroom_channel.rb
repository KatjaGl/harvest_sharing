class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    chatroom = Chatroom.find(params[:id])
    stream_for chatroom
  end

  def unsubscribed
    chatroom = Chatroom.find(params[:id])
    stream_for chatroom
  end
end
