class Tinta < ApplicationRecord
  has_many :contidades_tintas, inverse_of: :cliente, dependent: :destroy
 accepts_nested_attributes_for :contactos, reject_if: :all_blank, allow_destroy: true

end
