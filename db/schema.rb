# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_11_19_134730) do
  create_table "armazenamentos", force: :cascade do |t|
    t.integer "quantidade"
    t.integer "produto_id", null: false
    t.integer "usuario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_armazenamentos_on_produto_id"
    t.index ["usuario_id"], name: "index_armazenamentos_on_usuario_id"
  end

  create_table "compras", force: :cascade do |t|
    t.integer "quantidade"
    t.float "valor"
    t.date "data"
    t.text "descricao"
    t.integer "usuario_id", null: false
    t.integer "produto_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_compras_on_produto_id"
    t.index ["usuario_id"], name: "index_compras_on_usuario_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.string "emoji"
    t.integer "usuario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_produtos_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "armazenamentos", "produtos"
  add_foreign_key "armazenamentos", "usuarios"
  add_foreign_key "compras", "produtos"
  add_foreign_key "compras", "usuarios"
  add_foreign_key "produtos", "usuarios"
end
