Rails.application.routes.draw do
  devise_for :users

  scope "/admin_user" do
    resources :users
  end

  resources :families do
    post :add_to_family, on: :collection
  end


  root to: "families#index"
end
