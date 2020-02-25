Rails.application.routes.draw do
  root to: "items#index"
  # post "items/create" => "items#create"
  resources :items, only: [:index, :new]do
    collection do
      post 'create', to: 'items#create'
    end
  end

     
end