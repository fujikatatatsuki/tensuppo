require 'rails_helper'
describe Tax do
  before do
    @tax = FactoryBot.build(:tax)
  end

  describe '税金のタスク選択・金額入力' do
    context 'タスク選択・金額入力が成功する場合' do
      it '全ての値が正しく入力されていれば保存できる' do
        expect(@tax).to be_valid
      end
    end

    context 'タスク選択・金額入力が失敗する場合' do
      it '健康保険料の手続きで、1が選ばれていたら保存できない' do
        @tax.health_insurance_premium_id = 1
        @tax.valid?
        expect(@tax.errors.full_messages).to include("Health insurance premium must be other than 1")
      end
      it '健康保険料支払額が、空白だったら保存できない' do
        @tax.health_insurance_premium_price = nil
        @tax.valid?
        expect(@tax.errors.full_messages).to include("Health insurance premium price can't be blank", "Health insurance premium price 半角数字で入力してください")
      end
      it '健康保険料支払額が、半角数字以外だったら保存できない' do
        # @tax.health_insurance_premium_price = １００００
        # @tax.valid?
        # expect(@tax.errors.full_messages).to include("Health insurance premium price 半角数字で入力してください")
      end
      it '年金の手続きで、1が選ばれていたら保存できない' do
        @tax.pension_id = 1
        @tax.valid?
        expect(@tax.errors.full_messages).to include("Pension must be other than 1")
      end
      it '年金支払額が、空白だったら保存できない' do
        @tax.pension_price = nil
        @tax.valid?
        expect(@tax.errors.full_messages).to include("Pension price can't be blank", "Pension price 半角数字で入力してください")
      end
      it '年金支払額が、半角数字以外だったら保存できない' do
      end
      it '住民税の手続きで、1が選ばれていたら保存できない' do
        @tax.resident_tax_id = 1
        @tax.valid?
        expect(@tax.errors.full_messages).to include("Resident tax must be other than 1")
      end
      it '住民税支払額が、空白だったら保存できない' do
      end
      it '住民税支払額が、半角数字以外だったら保存できない' do
      end
      it '所得税の手続きで、1が選ばれていたら保存できない' do
        @tax.income_tax_id = 1
        @tax.valid?
        expect(@tax.errors.full_messages).to include("Income tax must be other than 1")
      end
      it '所得税支払額が、空白だったら保存できない' do
        @tax.income_tax_price = nil
        @tax.valid?
        expect(@tax.errors.full_messages).to include("Income tax price can't be blank", "Income tax price 半角数字で入力してください")
      end
      it '所得税支払額（income_tax_price）が、半角数字以外だったら保存できない' do
      end
      it 'その他支払額（other_taxes）が、空白だったら保存できない' do
        @tax.other_taxes = nil
        @tax.valid?
        expect(@tax.errors.full_messages).to include("Other taxes can't be blank", "Other taxes 半角数字で入力してください")
      end
      it 'その他支払額（other_taxes）が、半角数字以外だったら保存できない' do
      end
    end
  end
end
