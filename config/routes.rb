Epilady::Application.routes.draw do
  authenticated :user do
    root :to => 'reads#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  resources :reads
  resources :patients do
    resources :reports do
      resources :conclusions
      resources :tumors
      resources :malformacions
      resources :displasia
      resources :esclerosis
    end
  end
end
