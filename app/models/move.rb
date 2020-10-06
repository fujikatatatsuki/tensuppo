class Move < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :whether_to_move

  # 共通で、選択が「---」の時は保存できないようにする
  with_options numericality: { other_than: 1 } do
    validates :whether_to_move_id
    end

  # 半角数字のみ入力可能
  with_options format: { with: /\A[0-9]+\z/, message: '半角数字で入力してください' } do
    validates :moving_cost
    validates :rent
    validates :security_deposit
    validates :key_money
    validates :administrative_fee
    validates :other_moves
  end
end
