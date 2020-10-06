class CreateTrafficCosts < ActiveRecord::Migration[6.0]
  def change
    create_table :traffic_costs do |t|
      t.integer :traffic_cost              # 交通費
      t.integer :phone_cost                # 携帯料金
      t.integer :other_communication_costs # その他通信費
      t.integer :scholarship               # 奨学金
      t.integer :other_monthly_payment     # その他
      t.timestamps
    end
  end
end
