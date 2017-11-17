class MiniPedido < ApplicationRecord
  belongs_to :pedido
  belongs_to :tinta
end
