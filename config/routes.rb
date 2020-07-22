Rails.application.routes.draw do
  resources :missions
  resources :scientists
  resources :planets
  get "/", to: "abouts#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
