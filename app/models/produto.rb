class Produto < ApplicationRecord
  belongs_to :usuario
  has_many :compras
  has_one :armazenamento
end
