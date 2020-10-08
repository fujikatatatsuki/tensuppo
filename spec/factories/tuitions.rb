FactoryBot.define do
  factory :tuition do
    necessity_of_attending_school_id { 2 }      # 通学の必要性
    admission_cost                   { 10000 }  # 入学費
    monthly_tuition                  { 10000 }  # 月学費
    other_tuitions                   { 0 }      # その他
  end
end
