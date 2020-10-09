Rails.application.routes.draw do
  get 'groups/index'
  resources :groups
end
