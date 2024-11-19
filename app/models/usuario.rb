class Usuario < ApplicationRecord
  has_many :estoques
  has_many :produtos
  has_many :compras
end
