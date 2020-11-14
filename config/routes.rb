Rails.application.routes.draw do
  #devise_for deviseのヘルパーメソッド、ルーティングの設定
  devise_for :users do
  end

  #devise_scope deviseのヘルパーメソッド、ルーティングの追加
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end


  root 'groups#index'
  resources :groups do
    resources :tasks
  end
end
