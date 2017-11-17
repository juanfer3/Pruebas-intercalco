class DetallePedido < ApplicationRecord
  belongs_to :pedido, optional: true
  belongs_to :tecnica_de_impresion, optional: true

  has_many :descripcion_acabados, inverse_of: :detalle_pedido, dependent: :destroy
  accepts_nested_attributes_for :descripcion_acabados, reject_if: :all_blank, allow_destroy: true

end
