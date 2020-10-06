class CreateCosts < ActiveRecord::Migration[6.0]
  def change
    create_table :costs do |t|
      t.string  :health_insurance_premium_id      , null: false # （税金）健康保険料の手続き
      t.integer :health_insurance_premium_price                 # （税金）健康保険料支払額
      t.string  :pension_id                       , null: false # （税金）年金の手続き
      t.integer :pension_price                                  # （税金）年金支払額
      t.string  :resident_tax_id                  , null: false # （税金）住民税の手続き
      t.integer :resident_tax_price                             # （税金）住民税支払額
      t.string  :income_tax_id                    , null: false # （税金）所得税手続き
      t.integer :income_tax_price                               # （税金）所得税支払額
      t.integer :other_taxes                                    # （税金）その他
      t.integer :food_cost                                      # （生活費） 食費
      t.integer :expendables_cost                               # （生活費）消耗品費
      t.integer :medical_cost                                   # （生活費）医療費
      t.integer :other_life_costs                               # （生活費）その他
      t.string  :whether_to_move_id               , null: false # （引越し）引越しの有無
      t.integer :moving_cost                                    # （引越し）引越し費用
      t.integer :rent                                           # （引越し）家賃
      t.integer :security_deposit                               # （引越し）敷金
      t.integer :key_money                                      # （引越し）礼金
      t.integer :administrative_fee                             # （引越し）事務手数料
      t.integer :other_moves                                    # （引越し）その他
      t.string  :payment_of_utility_bill_id       , null: false # （光熱費）光熱費の支払の有無
      t.integer :electricity_charges                            # （光熱費）電気代
      t.integer :gas_charges                                    # （光熱費）ガス代
      t.integer :water_charges                                  # （光熱費）水道代
      t.integer :other_utility_costs                            # （光熱費）その他
      t.string  :car_ownership_id                 , null: false # （車）車の所有の有無
      t.integer :loan_monthly_payment                           # （車）ローン月払い
      t.integer :parking_cost                                   # （車）駐車場料金
      t.integer :water_cost                                     # （車）燃料代
      t.integer :fuel_cost                                      # （車）保険代
      t.integer :vehicle_inspection_fee                         # （車）車検代
      t.integer :car_tax                                        # （車）車税
      t.integer :other_cars                                     # （車）その他
      t.integer :traffic_cost                                   # （月額支払）交通費
      t.integer :phone_cost                                     # （月額支払）携帯料金
      t.integer :other_communication_costs                      # （月額支払）その他通信費
      t.integer :scholarship                                    # （月額支払）奨学金
      t.integer :debt                                           # （月額支払）借金
      t.integer :other_monthly_payment                          # （月額支払）その他
      t.string  :necessity_of_attending_school_id , null: false # （学費）通学の必要性
      t.integer :admission_cost                                 # （学費）入学費
      t.integer :monthly_tuition                                # （学費）月学費
      t.integer :other_tuitions                                 # （学費）その他
      t.timestamps
    end
  end
end
