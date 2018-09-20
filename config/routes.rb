Rails.application.routes.draw do
  resources :plan_recommendations
  get 'admin', to: 'plan_recommendations#admin'
  root to: 'pages#home'

  resources :user_plans
  get 'results', to: 'user_plans#results', as: 'results_path'

  resources :carriers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end