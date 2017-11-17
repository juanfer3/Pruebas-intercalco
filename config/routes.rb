Rails.application.routes.draw do
  resources :detalles_pedido
  resources :mini_pedidos
  resources :contactos
  resources :clientes
  resources :cantidades_tintas
  resources :descripcion_acabados
  resources :acabados
  resources :pedidos
  resources :tecnicas_de_impresion
  resources :tintas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
