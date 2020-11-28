Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope :api do
    resources :commentators, only: [:index, :show]
    resources :videos, only: [:index, :show]
    resources :sc_threads, only: [:index, :show]
    resources :dashboard, only: [:index]
    resources :articles, only: [:index, :show]
    post "articles/search"  => "articles#search"
    resources :ranking, only: [:index]
  end
end
