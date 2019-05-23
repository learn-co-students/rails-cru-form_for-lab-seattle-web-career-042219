Rails.application.routes.draw do
  resources :songs, :genres, :artists, only: [:show, :create, :update, :new, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'songs', to: 'songs#index'
end
