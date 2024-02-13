Rails.application.routes.draw do

  resources :films do 
    collection do
      get :index
      post :films_import
      post :reviews_import
    end
  end
end
