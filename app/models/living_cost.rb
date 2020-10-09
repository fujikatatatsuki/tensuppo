class LivingCost < ApplicationRecord

  # 共通で、空の投稿を保存できないようにする
  with_options presence: true do
    validates :food_cost
    validates :expendables_cost
    validates :medical_cost
    validates :other_life_costs
    end

  # 半角数字のみ入力可能
  with_options format: { with: /\A[0-9]+\z/, message: '半角数字で入力してください' } do
    validates :food_cost
    validates :expendables_cost
    validates :medical_cost
    validates :other_life_costs
  end
end
