FactoryBot.define do
  factory :tax do
    health_insurance_premium_id      { 1 }      # 健康保険料の手続き
    health_insurance_premium_price   { 19000 }  # 健康保険料支払額
    pension_id                       { 1 }      # 年金の手続き
    pension_price                    { 10000 }  # 年金支払額
    resident_tax_id                  { 1 }      # 住民税の手続き
    resident_tax_price               { 10000 }  # 住民税支払額
    income_tax_id                    { 1 }      # 所得税手続き
    income_tax_price                 { 10000 }  # 所得税支払額
    other_taxes                      { 0 }      # その他
  end
end
