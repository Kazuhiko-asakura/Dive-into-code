Rails.application.routes.draw do
root to: "top#index"
  resources :blogs
  get 'blogs', to: 'blogs#index'
end
