require 'rails_helper'
describe LivingCost do
  before do
    @living_cost = FactoryBot.build(:living_cost)
  end

  describe '生活費の金額入力' do
    context '金額入力が成功する場合' do
      it '全ての値が正しく入力されていれば保存できる' do
        expect(@living_cost).to be_valid
      end
    end

    context '金額入力が失敗する場合' do
      it '食費が、空白だったら保存できない' do
        @living_cost.food_cost = nil
        @living_cost.valid?
        expect(@living_cost.errors.full_messages).to include("Food cost can't be blank", "Food cost 半角数字で入力してください")
      end
      it '食費が、半角数字以外だったら保存できない' do
      end
      it '消耗品費が、空白だったら保存できない' do
        @living_cost.expendables_cost = nil
        @living_cost.valid?
        expect(@living_cost.errors.full_messages).to include("Expendables cost can't be blank", "Expendables cost 半角数字で入力してください")
      end
      it '消耗品費が、半角数字以外だったら保存できない' do
      end
      it '医療費が、空白だったら保存できない' do
        @living_cost.medical_cost = nil
        @living_cost.valid?
        expect(@living_cost.errors.full_messages).to include("Medical cost can't be blank", "Medical cost 半角数字で入力してください")
      end
      it '医療費が、半角数字以外だったら保存できない' do
      end
      it 'その他費用が、空白だったら保存できない' do
        @living_cost.other_life_costs = nil
        @living_cost.valid?
        expect(@living_cost.errors.full_messages).to include("Other life costs can't be blank", "Other life costs 半角数字で入力してください")
      end
      it 'その他費用が、半角数字以外だったら保存できない' do
      end
    end
  end
end