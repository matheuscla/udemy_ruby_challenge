Rails.application.routes.draw do
  devise_for :users

  scope "/admin_user" do
    resources :users
  end


  root to: "families#index"
end
