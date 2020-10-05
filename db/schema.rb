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

ActiveRecord::Schema.define(version: 2020_10_05_113706) do

  create_table "costs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "health_insurance_premium_id", null: false
    t.integer "health_insurance_premium_price"
    t.string "pension_id", null: false
    t.integer "pension_price"
    t.string "resident_tax_id", null: false
    t.integer "resident_tax_price"
    t.string "income_tax_id", null: false
    t.integer "income_tax_price"
    t.integer "other_taxes"
    t.integer "food_cost"
    t.integer "expendables_cost"
    t.integer "medical_cost"
    t.integer "other_life_costs"
    t.string "whether_to_move_id", null: false
    t.integer "moving_cost"
    t.integer "rent"
    t.integer "security_deposit"
    t.integer "key_money"
    t.integer "administrative_fee"
    t.integer "other_moves"
    t.string "payment_of_utility_bill_id", null: false
    t.integer "electricity_charges"
    t.integer "gas_charges"
    t.integer "water_charges"
    t.integer "other_utility_costs"
    t.string "car_ownership_id", null: false
    t.integer "loan_monthly_payment"
    t.integer "parking_cost"
    t.integer "water_cost"
    t.integer "fuel_cost"
    t.integer "vehicle_inspection_fee"
    t.integer "car_tax"
    t.integer "other_cars"
    t.integer "traffic＿cost"
    t.integer "phone＿cost"
    t.integer "other_communication_costs"
    t.integer "scholarship"
    t.integer "debt"
    t.integer "other_monthly_payment"
    t.string "necessity_of_attending_school_id", null: false
    t.integer "admission_cost"
    t.integer "monthly_tuition"
    t.integer "other_tuitions"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
