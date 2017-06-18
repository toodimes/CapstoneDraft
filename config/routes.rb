Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get 'logout', to: 'devise/sessions#destroy'
  end


  root to: "home#index"


  resources :user_profiles, except: [:destroy] do
    resources :program_preps, except: [:new]
  end
  resources :trainer_profiles, except: [:destroy]
  resources :goals, except: [:destroy]
  resources :exercises, only: [:index, :show]
  # get "/user_profiles/new" => "user_profile#new"
  # post "/user_profiles" => "user_profile#create"

  # get "/trainer_profiles/new" => "trainer_profile#new"
  # post "/trainer_profiles" => "trainer_profile#create"


  # get "/goals" => "goals#index"
  # get "/goals/new" => "goals#new"
  # get "/goals/:id" => "goals#show"
  # post "/goals" => "goals#create"
  # get "/goals/:id/edit" => "goals#edit"
  # patch "goals/:id" => "goals#update"
end
