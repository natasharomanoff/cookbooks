Cookbooks::Application.routes.draw do

  resources :books do 
    resources :chapters do
      resources :recipes
    end
  end


  devise_for :users

  get "home/index"

  root :to => 'home#index'

end
