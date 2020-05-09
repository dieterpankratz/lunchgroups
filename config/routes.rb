Rails.application.routes.draw do
  get '/shuffle', to: 'events#shuffle'
  root 'events#shuffle'
end
