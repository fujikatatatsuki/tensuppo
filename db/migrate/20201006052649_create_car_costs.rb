class CreateCarCosts < ActiveRecord::Migration[6.0]
  def change
    create_table :car_costs do |t|
      t.string  :car_ownership_id       , null: false # 車の所有の有無
      t.integer :loan_monthly_payment   , null: false # ローン月払い
      t.integer :parking_cost           , null: false # 駐車場料金
      t.integer :water_cost             , null: false # 燃料代
      t.integer :fuel_cost              , null: false # 保険代
      t.integer :vehicle_inspection_fee , null: false # 車検代
      t.integer :car_tax                , null: false # 車税
      t.integer :other_cars             , null: false # その他
      t.timestamps
    end
  end
end
