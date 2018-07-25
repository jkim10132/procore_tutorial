Rails.application.routes.draw do
  devise_for :students, :controllers => { :omniauth_callbacks => "students/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'courses#index'


  resources :students do
    resources :courses do
      resources :challenges
    end
  end
end
