Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    member do
      post :vote_up, :vote_down, :vote_undo
    end
  end
  root 'posts#index'
  get 'home/about'

end
