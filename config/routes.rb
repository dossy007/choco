Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root "choco#index"
  root 'choco#index'
  resources :choco
    # get "choco/:id/create" =>"choco#create"
# ネストすれば行けるかも
end
