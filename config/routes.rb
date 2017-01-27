Rails.application.routes.draw do
  devise_for :users

  scope "/admin_user" do
    resources :users do
      post :add_to_family, on: :collection
    end
  end

  root to: "families#index"
end
