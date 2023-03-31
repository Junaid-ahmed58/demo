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

ActiveRecord::Schema[7.0].define(version: 2023_03_31_112526) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles_authors", id: false, force: :cascade do |t|
    t.bigint "article_id", null: false
    t.bigint "author_id", null: false
  end

  create_table "author_projects", force: :cascade do |t|
    t.bigint "author_id", null: false
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "submission_date"
    t.index ["author_id"], name: "index_author_projects_on_author_id"
    t.index ["project_id"], name: "index_author_projects_on_project_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "books"
    t.string "father_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers_products", id: false, force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "product_id", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctor", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.float "fee", default: 0.0
  end

  create_table "employee", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.decimal "salary", default: "0.0"
    t.boolean "is_active", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_participents", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "participent_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_participents_on_event_id"
    t.index ["participent_id"], name: "index_event_participents_on_participent_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "venue"
    t.string "address"
    t.date "scheduled_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "commentable_type"
    t.integer "commentable_id"
  end

  create_table "manager_histories", force: :cascade do |t|
    t.date "joining_date"
    t.string "total_experience"
    t.bigint "manager_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_manager_histories_on_manager_id"
  end

  create_table "managers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "contact"
    t.bigint "department_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_managers_on_department_id"
  end

  create_table "news", force: :cascade do |t|
    t.string "title"
    t.boolean "is_live"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participents", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "marks"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "salary"
  end

  create_table "posts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "part_number"
    t.decimal "price", precision: 5, scale: 2
    t.string "supplier_type", null: false
    t.bigint "supplier_id", null: false
    t.index ["part_number"], name: "index_products_on_part_number"
    t.index ["supplier_type", "supplier_id"], name: "index_products_on_supplier"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_articles", force: :cascade do |t|
    t.string "title"
    t.bigint "article_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_sub_articles_on_article_id"
  end

  add_foreign_key "author_projects", "authors"
  add_foreign_key "author_projects", "projects"
  add_foreign_key "event_participents", "events"
  add_foreign_key "event_participents", "participents"
  add_foreign_key "manager_histories", "managers"
  add_foreign_key "managers", "departments"
  add_foreign_key "sub_articles", "articles"
end
