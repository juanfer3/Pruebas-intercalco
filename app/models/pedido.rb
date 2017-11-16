class Pedido < ApplicationRecord
  belongs_to :contacto

  has_many :detalles_pedido, inverse_of: :pedido, dependent: :destroy
  accepts_nested_attributes_for :detalles_pedido, reject_if: :all_blank, allow_destroy: true

end
