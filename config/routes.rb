Rails.application.routes.draw do
  root to: 'pages#index'
  jsonapi_resources :game_room
end
