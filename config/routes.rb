Rails.application.routes.draw do
  resources :students
  resources :courses
  resources :course_modules      # ← ensure this is here
  resources :student_modules

  root "students#index"

  get "up" => "rails/health#show", as: :rails_health_check
end