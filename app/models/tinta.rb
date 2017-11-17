class Tinta < ApplicationRecord
  has_many :mini_pedidos, inverse_of: :tinta, dependent: :destroy
 accepts_nested_attributes_for :mini_pedidos, reject_if: :all_blank, allow_destroy: true

end
