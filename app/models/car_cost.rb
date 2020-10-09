class CarCost < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :car_ownership

  # 共通で、選択が「---」の時は保存できないようにする
  with_options numericality: { other_than: 1 } do
    validates :car_ownership_id
  end

  # 共通で、空の投稿を保存できないようにする
  with_options presence: true do
    validates :loan_monthly_payment
    validates :parking_cost
    validates :water_cost
    validates :fuel_cost
    validates :vehicle_inspection_fee
    validates :car_tax
    validates :other_cars
  end

  # 半角数字のみ入力可能
  with_options format: { with: /\A[0-9]+\z/, message: '半角数字で入力してください' } do
    validates :loan_monthly_payment
    validates :parking_cost
    validates :water_cost
    validates :fuel_cost
    validates :vehicle_inspection_fee
    validates :car_tax
    validates :other_cars
  end
end
