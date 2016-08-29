Rails.application.routes.draw do
  get '/images' => 'images#index'
  get 'imagenes/new' => 'images#new' , as: :new_image
  #resources :messages
  resources :images, only:[:index,:new,:create], path: '/imagenes'
  
end
