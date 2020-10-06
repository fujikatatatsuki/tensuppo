FactoryBot.define do
  factory :cost do
    health_insurance_premium_id      { 1 }      # （税金）健康保険料の手続き
    health_insurance_premium_price   { 19000 }  # （税金）健康保険料支払額
    pension_id                       { 1 }      # （税金）年金の手続き
    pension_price                    { 10000 }  # （税金）年金支払額
    resident_tax_id                  { 1 }      # （税金）住民税の手続き
    resident_tax_price               { 10000 }  # （税金）住民税支払額
    income_tax_id                    { 1 }      # （税金）所得税手続き
    income_tax_price                 { 10000 }  # （税金）所得税支払額
    other_taxes                      { 0 }      # （税金）その他

    food_cost                        { 10000 }  # （生活費） 食費
    expendables_cost                 { 10000 }  # （生活費）消耗品費
    medical_cost                     { 10000 }  # （生活費）医療費
    other_life_costs                 { 0 }      # （生活費）その他

    whether_to_move_id               { 1 }      # （引越し）引越しの有無
    moving_cost                      { 10000 }  # （引越し）引越し費用
    rent                             { 10000 }  # （引越し）家賃
    security_deposit                 { 10000 }  # （引越し）敷金
    key_money                        { 10000 }  # （引越し）礼金
    administrative_fee               { 10000 }  # （引越し）事務手数料
    other_moves                      { 0 }      # （引越し）その他

    payment_of_utility_bill_id       { 1 }      # （光熱費）光熱費の支払の有無
    electricity_charges              { 10000 }  # （光熱費）電気代
    gas_charges                      { 10000 }  # （光熱費）ガス代
    water_charges                    { 10000 }  # （光熱費）水道代
    other_utility_costs              { 0 }      # （光熱費）その他

    car_ownership_id                 { 1 }      # （車）車の所有の有無
    loan_monthly_payment             { 10000 }  # （車）ローン月払い
    parking_cost                     { 10000 }  # （車）駐車場料金
    water_cost                       { 10000 }  # （車）燃料代
    fuel_cost                        { 10000 }  # （車）保険代
    vehicle_inspection_fee           { 10000 }  # （車）車検代
    car_tax                          { 10000 }  # （車）車税
    other_cars                       { 0 }      # （車）その他

    traffic_cost                     { 10000 }  # （月額支払）交通費
    phone_cost                       { 10000 }  # （月額支払）携帯料金
    other_communication_costs        { 10000 }  # （月額支払）その他通信費
    scholarship                      { 10000 }  # （月額支払）奨学金
    other_monthly_payment            { 0 }      # （月額支払）その他

    necessity_of_attending_school_id { 1 }      # （学費）通学の必要性
    admission_cost                   { 10000 }  # （学費）入学費
    monthly_tuition                  { 10000 }  # （学費）月学費
    other_tuitions                   { 0 }      # （学費）その他
  end
end