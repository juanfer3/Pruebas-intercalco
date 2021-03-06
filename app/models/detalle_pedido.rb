class DetallePedido < ApplicationRecord
  belongs_to :pedido
  belongs_to :tecnica_de_impresion

  has_many :descripcion_acabados, inverse_of: :detalle_pedido, dependent: :destroy
  accepts_nested_attributes_for :descripcion_acabados, reject_if: :all_blank, allow_destroy: true

end
