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

ActiveRecord::Schema.define(version: 2020_10_06_060543) do

  create_table "car_costs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "car_ownership_id", null: false
    t.integer "loan_monthly_payment", null: false
    t.integer "parking_cost", null: false
    t.integer "water_cost", null: false
    t.integer "fuel_cost", null: false
    t.integer "vehicle_inspection_fee", null: false
    t.integer "car_tax", null: false
    t.integer "other_cars", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "living_costs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "food_cost", null: false
    t.integer "expendables_cost", null: false
    t.integer "medical_cost", null: false
    t.integer "other_life_costs", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "monthly_payments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "traffic_cost", null: false
    t.integer "phone_cost", null: false
    t.integer "other_communication_costs", null: false
    t.integer "scholarship", null: false
    t.integer "other_monthly_payment", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "moves", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "whether_to_move_id", null: false
    t.integer "moving_cost", null: false
    t.integer "rent", null: false
    t.integer "security_deposit", null: false
    t.integer "key_money", null: false
    t.integer "administrative_fee", null: false
    t.integer "other_moves", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "taxes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "health_insurance_premium_id", null: false
    t.integer "health_insurance_premium_price", null: false
    t.string "pension_id", null: false
    t.integer "pension_price", null: false
    t.string "resident_tax_id", null: false
    t.integer "resident_tax_price", null: false
    t.string "income_tax_id", null: false
    t.integer "income_tax_price", null: false
    t.integer "other_taxes", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tuitions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "necessity_of_attending_school_id", null: false
    t.integer "admission_cost", null: false
    t.integer "monthly_tuition", null: false
    t.integer "other_tuitions", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "utility_costs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "payment_of_utility_bill_id", null: false
    t.integer "electricity_charges", null: false
    t.integer "gas_charges", null: false
    t.integer "water_charges", null: false
    t.integer "other_utility_costs", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
