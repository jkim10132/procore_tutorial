Rails.application.routes.draw do
  devise_for :students, :controllers => { :omniauth_callbacks => "students/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
