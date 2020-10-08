class CreateLivingCosts < ActiveRecord::Migration[6.0]
  def change
    create_table :living_costs do |t|
      t.integer :food_cost        , null: false  #  食費
      t.integer :expendables_cost , null: false  # 消耗品費
      t.integer :medical_cost     , null: false  # 医療費
      t.integer :other_life_costs , null: false  # その他
      t.timestamps
    end
  end
end
