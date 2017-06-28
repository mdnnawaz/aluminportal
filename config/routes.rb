Rails.application.routes.draw do
  get 'staticpage/index'

 resources :forms
devise_for :students


  devise_scope :student do
  authenticated :student do
    root 'welcome#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
