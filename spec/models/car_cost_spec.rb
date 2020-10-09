require 'rails_helper'
describe CarCost do
  before do
    @car_cost = FactoryBot.build(:car_cost)
  end

  describe '車のタスク選択・金額入力' do
    context 'タスク選択・金額入力が成功する場合' do
      it '全ての値が正しく入力されていれば保存できる' do
        expect(@car_cost).to be_valid
      end
    end

    context 'タスク選択・金額入力が失敗する場合' do
      it '車の所有の有無で、1が選ばれていたら保存できない' do
        @car_cost.car_ownership_id = 1
        @car_cost.valid?
        expect(@car_cost.errors.full_messages).to include("Car ownership must be other than 1")
      end
      it 'ローン月払い額が、空白だったら保存できない' do
        @car_cost.loan_monthly_payment = nil
        @car_cost.valid?
        expect(@car_cost.errors.full_messages).to include("Loan monthly payment can't be blank", "Loan monthly payment 半角数字で入力してください")
      end
      it 'ローン月払い額が、半角数字以外だったら保存できない' do
      end
      it '駐車場料金が、空白だったら保存できない' do
        @car_cost.parking_cost = nil
        @car_cost.valid?
        expect(@car_cost.errors.full_messages).to include("Parking cost can't be blank", "Parking cost 半角数字で入力してください")
      end
      it '駐車場料金が、半角数字以外だったら保存できない' do
      end
      it '燃料代が、空白だったら保存できない' do
        @car_cost.water_cost = nil
        @car_cost.valid?
        expect(@car_cost.errors.full_messages).to include("Water cost can't be blank", "Water cost 半角数字で入力してください")
      end
      it '燃料代が、半角数字以外だったら保存できない' do
      end
      it '保険代が、空白だったら保存できない' do
        @car_cost.fuel_cost = nil
        @car_cost.valid?
        expect(@car_cost.errors.full_messages).to include("Fuel cost can't be blank", "Fuel cost 半角数字で入力してください")
      end
      it '保険代が、半角数字以外だったら保存できない' do
      end
      it '車検代が、空白だったら保存できない' do
        @car_cost.vehicle_inspection_fee = nil
        @car_cost.valid?
        expect(@car_cost.errors.full_messages).to include("Vehicle inspection fee can't be blank", "Vehicle inspection fee 半角数字で入力してください")
      end
      it '車検代が、半角数字以外だったら保存できない' do
      end
      it '車税が、空白だったら保存できない' do
        @car_cost.car_tax = nil
        @car_cost.valid?
        expect(@car_cost.errors.full_messages).to include("Car tax can't be blank", "Car tax 半角数字で入力してください")
      end
      it '車税が、半角数字以外だったら保存できない' do
      end
      it 'その他が、空白だったら保存できない' do
        @car_cost.other_cars = nil
        @car_cost.valid?
        expect(@car_cost.errors.full_messages).to include("Other cars can't be blank", "Other cars 半角数字で入力してください")
      end
      it 'その他が、半角数字以外だったら保存できない' do
      end
    end
  end
end