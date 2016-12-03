# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161203044756) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "lastname"
    t.string   "phone"
    t.string   "emergencyphone"
    t.string   "rut"
    t.date     "bday"
    t.string   "afp"
    t.string   "insurance"
    t.string   "genre"
    t.string   "position"
    t.string   "bike"
    t.string   "bikeplate"
    t.string   "bank"
    t.integer  "accountnumber"
    t.string   "accounttype"
    t.index ["email"], name: "index_employees_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true, using: :btree
  end

  create_table "order_employees", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["employee_id"], name: "index_order_employees_on_employee_id", using: :btree
    t.index ["order_id"], name: "index_order_employees_on_order_id", using: :btree
  end

  create_table "order_products", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_products_on_order_id", using: :btree
    t.index ["product_id"], name: "index_order_products_on_product_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "totalamount"
    t.integer  "deliveryamount"
    t.integer  "productsamount"
    t.string   "orderlist"
    t.integer  "client_id"
    t.integer  "zone_id"
    t.integer  "payment_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["client_id"], name: "index_orders_on_client_id", using: :btree
    t.index ["payment_id"], name: "index_orders_on_payment_id", using: :btree
    t.index ["zone_id"], name: "index_orders_on_zone_id", using: :btree
  end

  create_table "payments", force: :cascade do |t|
    t.string   "name"
    t.integer  "amount"
    t.integer  "ordernumber"
    t.string   "tpye"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_product_categories_on_category_id", using: :btree
    t.index ["product_id"], name: "index_product_categories_on_product_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "cookingtime"
    t.integer  "price"
    t.string   "additional"
    t.string   "picture"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "zones", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "description"
    t.string   "dots"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "order_employees", "employees"
  add_foreign_key "order_employees", "orders"
  add_foreign_key "order_products", "orders"
  add_foreign_key "order_products", "products"
  add_foreign_key "orders", "clients"
  add_foreign_key "orders", "payments"
  add_foreign_key "orders", "zones"
  add_foreign_key "product_categories", "categories"
  add_foreign_key "product_categories", "products"
end
