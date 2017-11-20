class LineaDeImpresion < ApplicationRecord
  has_many :pedidos, inverse_of: :tipo_de_impresion, dependent: :destroy
  accepts_nested_attributes_for :pedidos, reject_if: :all_blank, allow_destroy: true

end
