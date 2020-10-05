class Cost < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :health_insurance_premium
  belongs_to_active_hash :pension
  belongs_to_active_hash :resident_tax
  belongs_to_active_hash :income_tax
  belongs_to_active_hash :whether_to_move
  belongs_to_active_hash :payment_of_utility_bill
  belongs_to_active_hash :car_ownership
  belongs_to_active_hash :necessity_of_attending_school

  # 共通で、選択が「---」の時は保存できないようにする
  with_options numericality: { other_than: 1 } do
    validates :health_insurance_premium_id
    validates :pension_id
    validates :resident_tax_id
    validates :income_tax_id
    validates :whether_to_move_id
    validates :payment_of_utility_bill_id
    validates :car_ownership_id
    validates :necessity_of_attending_school_id
  end

  # 半角数字のみ入力可能
  with_options format: { with: /\A[0-9]+\z/, message: '半角数字で入力してください' } do
    validates :health_insurance_premium_price
    validates :pension_price
    validates :resident_tax_price
    validates :income_tax_price
    validates :other_taxes
    validates :food_cost
    validates :expendables_cost
    validates :medical_cost
    validates :other_life_costs
    validates :moving_cost
    validates :rent
    validates :security_deposit
    validates :key_money
    validates :administrative_fee
    validates :other_moves
    validates :electricity_charges
    validates :gas_charges
    validates :water_charges
    validates :other_utility_costs
    validates :loan_monthly_payment
    validates :parking_cost
    validates :water_cost
    validates :fuel_cost
    validates :vehicle_inspection_fee
    validates :car_tax
    validates :other_cars
    validates :traffic_cost
    validates :phone_cost
    validates :other_communication_costs
    validates :scholarship
    validates :other_monthly_payment
    validates :admission_cost
    validates :monthly_tuition
    validates :other_tuitions
  end
end
