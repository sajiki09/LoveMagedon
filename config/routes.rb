Rails.application.routes.draw do
  # rootをサインイン画面に設定
  devise_scope :user do
    root "users/sessions#new"
    get "users/sign_out", to: "users/sessions#destroy"
  end

  # サインイン後のルーティング
  get "/profile", to: "users#show"

  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
end