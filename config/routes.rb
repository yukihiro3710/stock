Rails.application.routes.draw do
  resources :items, only: [:index, :new,:create, :edit, :destroy, :update, ] do
    collection do
      get "search"
    end
  end
  
  root to: "items#index"
  
    
     
end