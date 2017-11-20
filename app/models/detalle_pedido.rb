class DetallePedido < ApplicationRecord
  belongs_to :pedido
  belongs_to :tecnica_de_impresion
end
