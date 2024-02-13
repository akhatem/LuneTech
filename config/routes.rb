Rails.application.routes.draw do

  resources :films do 
    collection do
      get :index
    end
  end
end
