class UtilityCost < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :payment_of_utility_bill

  # 共通で、選択が「---」の時は保存できないようにする
  with_options numericality: { other_than: 1 } do
    validates :payment_of_utility_bill_id
  end

  # 共通で、空の投稿を保存できないようにする
  with_options presence: true do
    validates :electricity_charges
    validates :gas_charges
    validates :water_charges
    validates :other_utility_costs
  end

  # 半角数字のみ入力可能
  with_options format: { with: /\A[0-9]+\z/, message: '半角数字で入力してください' } do
    validates :electricity_charges
    validates :gas_charges
    validates :water_charges
    validates :other_utility_costs
  end
end
