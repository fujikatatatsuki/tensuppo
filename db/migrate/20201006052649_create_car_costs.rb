class CreateCarCosts < ActiveRecord::Migration[6.0]
  def change
    create_table :car_costs do |t|
      t.string  :car_ownership_id      , null: false # 車の所有の有無
      t.integer :loan_monthly_payment                # ローン月払い
      t.integer :parking_cost                        # 駐車場料金
      t.integer :water_cost                          # 燃料代
      t.integer :fuel_cost                           # 保険代
      t.integer :vehicle_inspection_fee              # 車検代
      t.integer :car_tax                             # 車税
      t.integer :other_cars                          # その他
      t.timestamps
    end
  end
end
