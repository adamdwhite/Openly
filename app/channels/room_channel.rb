# class RoomChannel < ApplicationCable::Channel
#   def subscribed
#     stream_from "cc_channel_#{client_counselor.id}"
#   end

#   def unsubscribed
#     # Any cleanup needed when channel is unsubscribed
#   end

#   def speak(data)
#     ActionCable.server.broadcast "cc_channel", message: data['message']
#     Message.create! content: data['message']
#   end
# end


