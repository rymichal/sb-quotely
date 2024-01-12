Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "questions#index"

  resources :episodes

  resources :questions

  # get 'questionresult_result/:question_id/:episode_id', to: 'questions#result', as: :question_result
  post 'grade/:question_id/:episode_id', to: 'questions#grade', as: :question_result_post

end
