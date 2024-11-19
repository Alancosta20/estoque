class CreateArmazenamentos < ActiveRecord::Migration[7.1]
  def change
    create_table :armazenamentos do |t|
      t.integer :quantidade
      t.references :produto, null: false, foreign_key: true
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
