class CreateTuitions < ActiveRecord::Migration[6.0]
  def change
    create_table :tuitions do |t|

      t.timestamps
    end
  end
end
