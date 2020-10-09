require 'rails_helper'
describe Tuition do
  before do
    @tuition = FactoryBot.build(:tuition)
  end

  describe '学費のタスク選択・金額入力' do
    context 'タスク選択・金額入力が成功する場合' do
      it '全ての値が正しく入力されていれば保存できる' do
        expect(@tuition).to be_valid
      end
    end

    context 'タスク選択・金額入力が失敗する場合' do
      it '通学の必要性で、1が選ばれていたら保存できない' do
        @tuition.necessity_of_attending_school_id = 1
        @tuition.valid?
        expect(@tuition.errors.full_messages).to include("Necessity of attending school must be other than 1")
      end
      it '入学費が、空白だったら保存できない' do
        @tuition.admission_cost = nil
        @tuition.valid?
        expect(@tuition.errors.full_messages).to include("Admission cost can't be blank", "Admission cost 半角数字で入力してください")
      end
      it '入学費が、半角数字以外だったら保存できない' do
      end
      it '月額費が、空白だったら保存できない' do
        @tuition.monthly_tuition = nil
        @tuition.valid?
        expect(@tuition.errors.full_messages).to include("Monthly tuition can't be blank", "Monthly tuition 半角数字で入力してください")
      end
      it '月額費が、半角数字以外だったら保存できない' do
      end
      it 'その他が、空白だったら保存できない' do
        @tuition.other_tuitions = nil
        @tuition.valid?
        expect(@tuition.errors.full_messages).to include("Other tuitions can't be blank", "Other tuitions 半角数字で入力してください")
      end
      it 'その他が、半角数字以外だったら保存できない' do
      end
    end
  end
end