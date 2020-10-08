class CreateMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :moves do |t|
      t.string  :whether_to_move_id , null: false # 引越しの有無
      t.integer :moving_cost        , null: false              # 引越し費用
      t.integer :rent               , null: false              # 家賃
      t.integer :security_deposit   , null: false              # 敷金
      t.integer :key_money          , null: false              # 礼金
      t.integer :administrative_fee , null: false              # 事務手数料
      t.integer :other_moves        , null: false              # その他
      t.timestamps
    end
  end
end
