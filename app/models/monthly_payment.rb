class MonthlyPayment < ApplicationRecord

  # 半角数字のみ入力可能
  with_options format: { with: /\A[0-9]+\z/, message: '半角数字で入力してください' } do
    validates :traffic_cost
    validates :phone_cost
    validates :other_communication_costs
    validates :scholarship
    validates :other_monthly_payment
  end
end
