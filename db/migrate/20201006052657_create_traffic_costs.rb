class CreateTrafficCosts < ActiveRecord::Migration[6.0]
  def change
    create_table :traffic_costs do |t|

      t.timestamps
    end
  end
end
