require 'rails_helper'
describe UtilityCost do
  before do
    @utility_cost = FactoryBot.build(:utility_cost)
  end

  describe '光熱費のタスク選択・金額入力' do
    context 'タスク選択・金額入力が成功する場合' do
      it '全ての値が正しく入力されていれば保存できる' do
        expect(@utility_cost).to be_valid
      end
    end

    context 'タスク選択・金額入力が失敗する場合' do
      it '光熱費支払いの有無で、1が選ばれていたら保存できない' do
        @utility_cost.payment_of_utility_bill_id = 1
        @utility_cost.valid?
        expect(@utility_cost.errors.full_messages).to include("Payment of utility bill must be other than 1")
      end
      it '電気代が、空白だったら保存できない' do
        @utility_cost.electricity_charges = nil
        @utility_cost.valid?
        expect(@utility_cost.errors.full_messages).to include("Electricity charges can't be blank", "Electricity charges 半角数字で入力してください")
      end
      it '電気代が、半角数字以外だったら保存できない' do
      end
      it 'ガス代が、空白だったら保存できない' do
        @utility_cost.gas_charges = nil
        @utility_cost.valid?
        expect(@utility_cost.errors.full_messages).to include("Gas charges can't be blank", "Gas charges 半角数字で入力してください")
      end
      it 'ガス代が、半角数字以外だったら保存できない' do
      end
      it '水道代が、空白だったら保存できない' do
        @utility_cost.water_charges = nil
        @utility_cost.valid?
        expect(@utility_cost.errors.full_messages).to include("Water charges can't be blank", "Water charges 半角数字で入力してください")
      end
      it '水道代が、半角数字以外だったら保存できない' do
      end
      it 'その他金額が、空白だったら保存できない' do
        @utility_cost.other_utility_costs = nil
        @utility_cost.valid?
        expect(@utility_cost.errors.full_messages).to include("Other utility costs can't be blank", "Other utility costs 半角数字で入力してください")
      end
      it 'その他金額が、半角数字以外だったら保存できない' do
      end
    end
  end
end