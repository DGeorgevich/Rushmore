Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :teachers
  resources :teams, except: [:show, :edit, :update] do
    collection { post :import}
  end
  resources :students
  resources :sessions

  root "welcome#index"
end
