Rails.application.routes.draw do
  resources :users, only: %i[new create edit]
  resources :users do
    put 'edit', action: :edit
  end 
end
