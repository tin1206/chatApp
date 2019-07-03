class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom

  after_create :broadcast_message

  def broadcast_message
    ActionCable.server.broadcast("chatroom:#{self.chatroom_id}", message: self)
  end
end
