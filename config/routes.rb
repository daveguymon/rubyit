Rails.application.routes.draw do
  root to: "links#index"
  
  resources :comments
  devise_for :users
  resources :links do
    member do
      put "like", to: "links#upvote"
      put "dislike", to: "links#downvote"
    end
    resources :comments
  end
end
