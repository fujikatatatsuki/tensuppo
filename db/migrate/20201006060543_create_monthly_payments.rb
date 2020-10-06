class CreateMonthlyPayments < ActiveRecord::Migration[6.0]
  def change
    create_table :monthly_payments do |t|

      t.timestamps
    end
  end
end
