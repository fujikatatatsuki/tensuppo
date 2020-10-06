class Tuition < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :necessity_of_attending_school

  # 共通で、選択が「---」の時は保存できないようにする
  with_options numericality: { other_than: 1 } do
    validates :necessity_of_attending_school_id
  end

  # 半角数字のみ入力可能
  with_options format: { with: /\A[0-9]+\z/, message: '半角数字で入力してください' } do
    validates :admission_cost
    validates :monthly_tuition
    validates :other_tuitions
  end
end
