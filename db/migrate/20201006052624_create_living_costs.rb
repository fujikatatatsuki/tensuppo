class CreateLivingCosts < ActiveRecord::Migration[6.0]
  def change
    create_table :living_costs do |t|

      t.timestamps
    end
  end
end
