class CantidadTinta < ApplicationRecord
  belongs_to :detalle_pedido
  belongs_to :tinta
end
