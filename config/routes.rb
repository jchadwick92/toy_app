Rails.application.routes.draw do
  resources :tasks do
    member do
      put :change
    end
  end

  devise_for :users
root 'pages#home'

get 'about' => 'pages#about' # when about link is clicked, this directs us to pages_controller

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
