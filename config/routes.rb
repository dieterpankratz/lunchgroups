Rails.application.routes.draw do
  get '/shuffle', to: 'events#shuffle'
  root 'events#current_event_home'
end
