class Cliente < ApplicationRecord
  has_many :detalles_pedidos, inverse_of: :pedido, dependent: :destroy
  accepts_nested_attributes_for :detalles_pedido, reject_if: :all_blank, allow_destroy: true
end
