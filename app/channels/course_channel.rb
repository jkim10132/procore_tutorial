class CourseChannel < ApplicationCable::Channel
  def subscribed
    stream from "course"
  end

  def unsubscribed
    stop_all_streams
  end
end
