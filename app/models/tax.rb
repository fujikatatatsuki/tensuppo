class Tax < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :health_insurance_premium
  belongs_to_active_hash :pension
  belongs_to_active_hash :resident_tax
  belongs_to_active_hash :income_tax

  # 共通で、選択が「---」の時は保存できないようにする
  with_options numericality: { other_than: 1 } do
    validates :health_insurance_premium_id
    validates :pension_id
    validates :resident_tax_id
    validates :income_tax_id
  end

  # 半角数字のみ入力可能
  with_options format: { with: /\A[0-9]+\z/, message: '半角数字で入力してください' } do
    validates :health_insurance_premium_price
    validates :pension_price
    validates :resident_tax_price
    validates :income_tax_price
    validates :other_taxes
  end
end
