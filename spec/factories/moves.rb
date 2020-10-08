FactoryBot.define do
  factory :move do
    whether_to_move_id               { 2 }      # 引越しの有無
    moving_cost                      { 10000 }  # 引越し費用
    rent                             { 10000 }  # 家賃
    security_deposit                 { 10000 }  # 敷金
    key_money                        { 10000 }  # 礼金
    administrative_fee               { 10000 }  # 事務手数料
    other_moves                      { 0 }      # その他
  end
end
