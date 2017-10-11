Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
             unauthenticated do
         root to: 'devise/sessions#new', as: :unauthenticated_root
       end
       get '/users/sign_out' => 'devise/sessions#destroy'
     end
  resources :todos
  root :to => "todos#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
