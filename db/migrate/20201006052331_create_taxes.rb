class CreateTaxes < ActiveRecord::Migration[6.0]
  def change
    create_table :taxes do |t|
      t.string  :health_insurance_premium_id    , null: false # 健康保険料の手続き
      t.integer :health_insurance_premium_price , null: false # 健康保険料支払額
      t.string  :pension_id                     , null: false # 年金の手続き
      t.integer :pension_price                  , null: false # 年金支払額
      t.string  :resident_tax_id                , null: false # 住民税の手続き
      t.integer :resident_tax_price             , null: false # 住民税支払額
      t.string  :income_tax_id                  , null: false # 所得税手続き
      t.integer :income_tax_price               , null: false # 所得税支払額
      t.integer :other_taxes                    , null: false # その他
      t.timestamps
    end
  end
end
