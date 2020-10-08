FactoryBot.define do
  factory :utility_cost do
    payment_of_utility_bill_id       { 2 }      # 光熱費の支払の有無
    electricity_charges              { 10000 }  # 電気代
    gas_charges                      { 10000 }  # ガス代
    water_charges                    { 10000 }  # 水道代
    other_utility_costs              { 0 }      # その他
  end
end
