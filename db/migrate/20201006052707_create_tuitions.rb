class CreateTuitions < ActiveRecord::Migration[6.0]
  def change
    create_table :tuitions do |t|
      t.string  :necessity_of_attending_school_id , null: false # 通学の必要性
      t.integer :admission_cost                   , null: false # 入学費
      t.integer :monthly_tuition                  , null: false # 月学費
      t.integer :other_tuitions                   , null: false # その他
      t.timestamps
    end
  end
end
