FactoryBot.define do
  factory :living_cost do
    food_cost                        { 10000 }  #  食費
    expendables_cost                 { 10000 }  # 消耗品費
    medical_cost                     { 10000 }  # 医療費
    other_life_costs                 { 0 }      # その他
  end
end
