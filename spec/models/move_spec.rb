require 'rails_helper'
describe Move do
  before do
    @move = FactoryBot.build(:move)
  end

  describe '税金のタスク選択・金額入力' do
    context 'タスク選択・金額入力が成功する場合' do
      it '全ての値が正しく入力されていれば保存できる' do
        expect(@move).to be_valid
      end
    end

    context 'タスク選択・金額入力が失敗する場合' do
      it '引越しの有無で、1が選ばれていたら保存できない' do
        @move.whether_to_move_id = 1
        @move.valid?
        expect(@move.errors.full_messages).to include("Whether to move must be other than 1")
      end
      it '引越し費用が、空白だったら保存できない' do
        @move.moving_cost = nil
        @move.valid?
        expect(@move.errors.full_messages).to include("Moving cost can't be blank", "Moving cost 半角数字で入力してください")
      end
      it '引越し費用が、半角数字以外だったら保存できない' do
      end
      it '引越し費用が、空白だったら保存できない' do
        @move.moving_cost = nil
        @move.valid?
        expect(@move.errors.full_messages).to include("Moving cost can't be blank", "Moving cost 半角数字で入力してください")
      end
      it '引越し費用が、半角数字以外だったら保存できない' do
      end
      it '引越し費用が、空白だったら保存できない' do
        @move.moving_cost = nil
        @move.valid?
        expect(@move.errors.full_messages).to include("Moving cost can't be blank", "Moving cost 半角数字で入力してください")
      end
      it '引越し費用が、半角数字以外だったら保存できない' do
      end
      it '引越し費用が、空白だったら保存できない' do
        @move.moving_cost = nil
        @move.valid?
        expect(@move.errors.full_messages).to include("Moving cost can't be blank", "Moving cost 半角数字で入力してください")
      end
      it '引越し費用が、半角数字以外だったら保存できない' do
      end
      it '引越し費用が、空白だったら保存できない' do
        @move.moving_cost = nil
        @move.valid?
        expect(@move.errors.full_messages).to include("Moving cost can't be blank", "Moving cost 半角数字で入力してください")
      end
      it '引越し費用が、半角数字以外だったら保存できない' do
      end
      it '引越し費用が、空白だったら保存できない' do
        @move.moving_cost = nil
        @move.valid?
        expect(@move.errors.full_messages).to include("Moving cost can't be blank", "Moving cost 半角数字で入力してください")
      end
      it '引越し費用が、半角数字以外だったら保存できない' do
      end
    end
  end
end