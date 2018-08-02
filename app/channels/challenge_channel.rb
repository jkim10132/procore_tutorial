class ChallengeChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "challenge_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed

  end
  def receive(data)
    ActionCable.server.broadcast "Challenge Channel", data
  end 
end
