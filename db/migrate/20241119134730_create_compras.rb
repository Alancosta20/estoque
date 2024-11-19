class CreateCompras < ActiveRecord::Migration[7.1]
  def change
    create_table :compras do |t|
      t.integer :quantidade
      t.float :valor
      t.date :data
      t.text :descricao
      t.references :usuario, null: false, foreign_key: true
      t.references :produto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
