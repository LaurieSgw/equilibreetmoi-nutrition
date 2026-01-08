Rails.application.routes.draw do
 resources :forms, only: [:new, :create]

 root to: "pages#home"

  get "prestations", to: "pages#prestations"
  get "prendrerdv", to: "pages#prendrerdv"
  get "contact", to: "pages#contact"



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
