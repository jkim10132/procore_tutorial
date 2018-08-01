Rails.application.routes.draw do
devise_for :students, :controllers => { :omniauth_callbacks => "students/omniauth_callbacks" }, :skip => [:jenkins]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'courses#index'

  post 'retrieve_challenge_data' => 'jenkins#retrieve_challenge_data'

  resources :students do
  	resources :courses do
	  get 'add_student_to_course' => 'courses#add_student_to_course'
	  resources :challenges
    get 'updateChallenges' => 'challenges#index_get'
	end
  end
end
