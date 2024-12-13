class Produto < ApplicationRecord
  belongs_to :usuario
  has_many :compras
  has_one :armazenamento


  validates_presence_of :nome
end
