Rails.application.routes.draw do
  resources :contacts, only: [:new]
  root 'contacts#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
