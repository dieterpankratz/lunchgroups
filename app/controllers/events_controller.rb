class EventsController < ApplicationController

  def current_event_home
    @event = Event.last
  end
end
