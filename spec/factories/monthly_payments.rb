FactoryBot.define do
  factory :monthly_payment do
    traffic_cost                     { 10000 }  # 交通費
    phone_cost                       { 10000 }  # 携帯料金
    other_communication_costs        { 10000 }  # その他通信費
    scholarship                      { 10000 }  # 奨学金
    debt                             { 10000 }  # 借金
    other_monthly_payment            { 0 }      # その他
  end
end
