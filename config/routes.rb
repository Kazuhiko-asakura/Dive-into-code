Rails.application.routes.draw do
  devise_for :users
  get 'inquiry/new'

  get 'inquiry/confirm'

  get 'inquiry/thanks'

root to: "top#index"
  resources :blogs
  get 'inquiry' , to: 'inquiry#new'
  post 'inquiry/confirm' , to: 'inquiry#confirm'
  post 'inquiry/thanks' , to: 'inquiry#thanks'
end
