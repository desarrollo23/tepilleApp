Rails.application.routes.draw do
  resources :foto_reportes
  resources :reportes
  resources :info_usuarios
  resources :usuarios
  resources :localidads
  resources :generos
  resources :rols
  resources :fotos
  resources :estacions
  resources :ruta
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
