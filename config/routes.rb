Rails.application.routes.draw do
  resources :student_modules
  resources :course_module_templates
  resources :courses
  resources :students

  root "students#index"

  get "up" => "rails/health#show", as: :rails_health_check
end