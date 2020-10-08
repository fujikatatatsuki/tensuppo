FactoryBot.define do
  factory :car_cost do
    car_ownership_id                 { 1 }      # （車）車の所有の有無
    loan_monthly_payment             { 10000 }  # （車）ローン月払い
    parking_cost                     { 10000 }  # （車）駐車場料金
    water_cost                       { 10000 }  # （車）燃料代
    fuel_cost                        { 10000 }  # （車）保険代
    vehicle_inspection_fee           { 10000 }  # （車）車検代
    car_tax                          { 10000 }  # （車）車税
    other_cars                       { 0 }      # （車）その他
  end
end
