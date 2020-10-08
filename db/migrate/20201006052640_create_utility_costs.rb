class CreateUtilityCosts < ActiveRecord::Migration[6.0]
  def change
    create_table :utility_costs do |t|
      t.string  :payment_of_utility_bill_id , null: false  # 光熱費の支払の有無
      t.integer :electricity_charges        , null: false  # 電気代
      t.integer :gas_charges                , null: false  # ガス代
      t.integer :water_charges              , null: false  # 水道代
      t.integer :other_utility_costs        , null: false  # その他
      t.timestamps
    end
  end
end
