class Pedido < ApplicationRecord
  belongs_to :contacto
  belongs_to :despacho
  belongs_to :factura
  belongs_to :linea_de_impresion

  has_many :mini_pedidos, inverse_of: :pedido, dependent: :destroy
  accepts_nested_attributes_for :mini_pedidos, reject_if: :all_blank, allow_destroy: true


  has_many :detalles_pedido, inverse_of: :pedido, dependent: :destroy
  accepts_nested_attributes_for :detalles_pedido, reject_if: :all_blank, allow_destroy: true

  has_many :tiempos_de_entregas, inverse_of: :pedido, dependent: :destroy
  accepts_nested_attributes_for :tiempos_de_entregas, reject_if: :all_blank, allow_destroy: true

end
