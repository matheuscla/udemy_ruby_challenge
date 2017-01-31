Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}

  scope "/admin_user" do
    resources :users do
      post :add_friend, on: :collection
      delete :delete_friend, on: :collection
    end
  end

  resources :friendship

  get '/my_friends', to:  "users#my_friends"

  resources :families do
    post :add_to_family, on: :collection
    post :delete_to_family, on: :collection
  end


  root to: "families#index"
end
