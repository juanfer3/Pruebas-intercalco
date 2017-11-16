class DescripcionAcabado < ApplicationRecord
  belongs_to :detalle_pedido
  belongs_to :acabado
end
