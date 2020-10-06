class CreateTuitions < ActiveRecord::Migration[6.0]
  def change
    create_table :tuitions do |t|
      t.string  :necessity_of_attending_school_id , null: false # 通学の必要性
      t.integer :admission_cost                                 # 入学費
      t.integer :monthly_tuition                                # 月学費
      t.integer :other_tuitions                                 # その他
      t.timestamps
    end
  end
end
