class CreateProdutos < ActiveRecord::Migration[7.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :emoji
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
