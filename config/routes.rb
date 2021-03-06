Rails.application.routes.draw do
  devise_for :users, controllers: { sessions:  "devise_overrides/sessions", registrations:  "devise_overrides/registrations"
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

 

  resources :stories

  resources :users do
  	resources :stories
  end


  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all

end
