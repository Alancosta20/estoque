class Armazenamento < ApplicationRecord
  belongs_to :produto
  belongs_to :usuario
end
