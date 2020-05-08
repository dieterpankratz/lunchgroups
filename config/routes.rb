Rails.application.routes.draw do
  root 'events#current_event_home'
  resources :events do
    resources :groups, only: [:index, :show] do
      resources :employees, only: [:index]
    end
    resources :employees, only: [:index]
  end
  resources :employees
end
