require 'rails_helper'
describe MonthlyPayment do
  before do
    @monthly_payment = FactoryBot.build(:monthly_payment)
  end

  describe '月額支払いの金額入力' do
    context '金額入力が成功する場合' do
      it '全ての値が正しく入力されていれば保存できる' do
        expect(@monthly_payment).to be_valid
      end
    end

    context '金額入力が失敗する場合' do
      it '交通費が、空白だったら保存できない' do
        @monthly_payment.traffic_cost = nil
        @monthly_payment.valid?
        expect(@monthly_payment.errors.full_messages).to include("Traffic cost can't be blank", "Traffic cost 半角数字で入力してください")
      end
      it '交通費が、半角数字以外だったら保存できない' do
      end
      it '携帯料金が、空白だったら保存できない' do
        @monthly_payment.phone_cost = nil
        @monthly_payment.valid?
        expect(@monthly_payment.errors.full_messages).to include("Phone cost can't be blank", "Phone cost 半角数字で入力してください")
      end
      it '携帯料金が、半角数字以外だったら保存できない' do
      end
      it 'その他通信費が、空白だったら保存できない' do
        @monthly_payment.other_communication_costs = nil
        @monthly_payment.valid?
        expect(@monthly_payment.errors.full_messages).to include("Other communication costs can't be blank", "Other communication costs 半角数字で入力してください")
      end
      it 'その他通信費が、半角数字以外だったら保存できない' do
      end
      it '奨学金が、空白だったら保存できない' do
        @monthly_payment.scholarship = nil
        @monthly_payment.valid?
        expect(@monthly_payment.errors.full_messages).to include("Scholarship can't be blank", "Scholarship 半角数字で入力してください")
      end
      it '奨学金が、半角数字以外だったら保存できない' do
      end
      it 'その他が、空白だったら保存できない' do
        @monthly_payment.other_monthly_payment = nil
        @monthly_payment.valid?
        expect(@monthly_payment.errors.full_messages).to include("Other monthly payment can't be blank", "Other monthly payment 半角数字で入力してください")
      end
      it 'その他が、半角数字以外だったら保存できない' do
      end
    end
  end
end