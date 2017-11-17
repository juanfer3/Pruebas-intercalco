class TecnicaDeImpresion < ApplicationRecord
  has_many :detalles_pedido, inverse_of: :tecnica_de_impresion, dependent: :destroy
  accepts_nested_attributes_for :detalles_pedido, reject_if: :all_blank, allow_destroy: true

end
