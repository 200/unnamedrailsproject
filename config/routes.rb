Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
    sessions: "users/sessions"
  }
  # get 'main/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount Magic::Link::Engine, at: "/"

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  root to: "main#index"
end
