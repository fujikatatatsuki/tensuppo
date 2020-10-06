class CreateUtilityCosts < ActiveRecord::Migration[6.0]
  def change
    create_table :utility_costs do |t|

      t.timestamps
    end
  end
end
