class Compra < ApplicationRecord
  belongs_to :usuario
  belongs_to :produto

  after_create :associar_armazenamento
  
  def associar_armazenamento
    armazenamento = Armazenamento.where(produto: self.produto).first

    if armazenamento.nil?
      Armazenamento.create(quantidade: self.quantidade, produto: self.produto, usuario: self.usuario)
    else 
      armazenamento.update(quantidade: armazenamento.quantidade+self.quantidade)
    end
  end
end
