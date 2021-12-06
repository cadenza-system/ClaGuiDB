# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_06_161720) do

  create_table "CD", primary_key: "ID", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "J_TITLE"
    t.string "E_TITLE"
    t.integer "RELEASE_YEAR"
    t.string "LABEL"
    t.string "LINK", limit: 755, null: false
    t.string "ASIN", null: false
    t.integer "DEL_FLG", null: false
  end

  create_table "CD_PLAYERS", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "CD_ID", null: false
    t.integer "MUSICIAN_ID", null: false
    t.integer "INDEX", null: false
  end

  create_table "CD_WORKS", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "CD_ID", null: false
    t.integer "WORKS_ID"
    t.string "WORKS_TITLE", null: false
    t.string "WORKS_TITLE_SUB"
    t.integer "INDEX", null: false
  end

  create_table "MUSICIAN_COUNTRY", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "MUSICIAN_ID", null: false
    t.integer "COUNTRY_ID", null: false
  end

  create_table "M_AREA", primary_key: "ID", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "NAME", null: false
  end

  create_table "M_COUNTRY", primary_key: "ID", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "NAME", null: false
    t.string "AREA", null: false
  end

  create_table "M_LABEL", primary_key: "ID", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "NAME", null: false
  end

  create_table "m_organizations", primary_key: "ID", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "J_NAME", null: false
    t.string "E_NAME", null: false
  end

  create_table "movie_organizations", primary_key: ["MOVIE_ID", "ORGANIZATION_ID"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "MOVIE_ID", null: false
    t.integer "ORGANIZATION_ID", null: false
  end

  create_table "movies", primary_key: "ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "WORKS_ID", null: false
    t.integer "SUB_NO"
    t.string "URL", null: false
    t.integer "ARRANGER"
    t.integer "DEL_FLG", default: 0, null: false
  end

  create_table "musicians", primary_key: "ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "J_NAME", null: false
    t.string "E_NAME", null: false
    t.string "LAST_NAME", null: false
    t.string "FROM_YEAR", limit: 5
    t.string "TO_YEAR", limit: 5
    t.integer "COMP_FLG", default: 0, null: false
    t.integer "PLAY_FLG", default: 0, null: false
    t.integer "DEL_FLG", default: 0, null: false
  end

  create_table "works", primary_key: "ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "J_TITLE"
    t.string "E_TITLE"
    t.string "OUPS"
    t.string "COMPOSER"
    t.string "SUB_COMPOSER"
    t.integer "DEL_FLG", default: 0, null: false
  end

  create_table "works_sub", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "WORKS_ID"
    t.integer "SUB_NO"
    t.string "J_TITLE"
    t.string "E_TITLE"
    t.integer "DEL_FLG", default: 0, null: false
  end

  create_table "works_subs", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
