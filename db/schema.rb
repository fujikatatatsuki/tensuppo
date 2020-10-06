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

ActiveRecord::Schema.define(version: 2020_10_06_052649) do

  create_table "car_costs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "car_ownership_id", null: false
    t.integer "loan_monthly_payment"
    t.integer "parking_cost"
    t.integer "water_cost"
    t.integer "fuel_cost"
    t.integer "vehicle_inspection_fee"
    t.integer "car_tax"
    t.integer "other_cars"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "living_costs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "food_cost"
    t.integer "expendables_cost"
    t.integer "medical_cost"
    t.integer "other_life_costs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "moves", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "whether_to_move_id", null: false
    t.integer "moving_cost"
    t.integer "rent"
    t.integer "security_deposit"
    t.integer "key_money"
    t.integer "administrative_fee"
    t.integer "other_moves"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "taxes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "health_insurance_premium_id", null: false
    t.integer "health_insurance_premium_price"
    t.string "pension_id", null: false
    t.integer "pension_price"
    t.string "resident_tax_id", null: false
    t.integer "resident_tax_price"
    t.string "income_tax_id", null: false
    t.integer "income_tax_price"
    t.integer "other_taxes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "utility_costs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "payment_of_utility_bill_id", null: false
    t.integer "electricity_charges"
    t.integer "gas_charges"
    t.integer "water_charges"
    t.integer "other_utility_costs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
