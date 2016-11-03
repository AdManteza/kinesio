Rails.application.routes.draw do
  devise_for :patients
  root :to => 'pages#index' 

  resources :appointments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
