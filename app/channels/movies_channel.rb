class MoviesChannel < ApplicationCable::Channel

  # When any consumer subscribes to this channel.
  def subscribed
    stream_from "movies"
  end

end
