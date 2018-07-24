Rails.application.routes.draw do
  resources :plan_recommendations
  root to: 'pages#home'

  resources :user_plans

  resources :carriers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end