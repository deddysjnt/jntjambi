Rails.application.routes.draw do
  resources :entry_posts
  resources :ware_houses
  resources :gudangs
  resources :pkhds
  resources :packs
  resources :unpacks
  devise_for :admins
  devise_for :users

  resources :dpbaggings
  resources :gtw_smus
  resources :gtw_stmps
  resources :gtw_sortirs
  resources :sprinter_gagals
  resources :dpoutgoings
  
  resources :motors
  resources :jabatans
  resources :jabatanpusats
  resources :droppoints
  resources :agents
  resources :karyawans
  resources :perkiraans
  resources :kendaraans
  resources :categories
  resources :products
  resources :users
  resources :glhds
  resources :glbbms
  resources :glpulsas
  resources :orderpulsas
  resources :sprinter_bawas
  resources :sprinter_kembalis
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
