class CreateMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :moves do |t|
      t.string  :whether_to_move_id, null: false # 引越しの有無
      t.integer :moving_cost                     # 引越し費用
      t.integer :rent                            # 家賃
      t.integer :security_deposit                # 敷金
      t.integer :key_money                       # 礼金
      t.integer :administrative_fee              # 事務手数料
      t.integer :other_moves                     # その他
      t.timestamps
    end
  end
end
