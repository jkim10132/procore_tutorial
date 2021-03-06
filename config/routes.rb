Rails.application.routes.draw do
devise_for :students, :controllers => { :omniauth_callbacks => "students/omniauth_callbacks" }, :skip => [:jenkins]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'courses#index'

  post 'retrieve_challenge_data' => 'jenkins#retrieve_challenge_data'
  post 'initiate_course' => 'jenkins#initiate_course'
  mount ActionCable.server => '/cable'

  resources :students do
  	resources :courses do
	  get 'add_student_to_course' => 'courses#add_student_to_course'
	  resources :challenges
	end
  end
end
