Rails.application.routes.draw do
  resources :toys
  resources :friend_ships
  resources :dogs
  resources :owners
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
