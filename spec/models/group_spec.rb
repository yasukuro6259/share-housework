require 'rails_helper'

RSpec.describe Group, type: :model do
  before do
    @group = FactoryBot.build(:group)
  end

  describe 'リスト作成' do
    context 'リスト作成がうまくいくとき' do
      it 'リスト内容(content)が存在すれば投稿できる' do
        expect(@group).to be_valid
      end
      it 'リスト内容(content)が10文字以下であれば投稿できる' do
        @group.content = 'a' * 10
        expect(@group).to be_valid
      end
    end

    context 'リスト作成がうまくいかないとき' do
      it 'リスト内容(content)が空だと投稿できない' do
        @group.content = ''
        @group.valid?
        expect(@group.errors.full_messages).to include("Content can't be blank")
      end
      it 'リスト内容(content)が11文字以上だと投稿できない' do
        @group.content = 'a' * 11
        @group.valid?
        expect(@group.errors.full_messages).to include('Content is too long (maximum is 10 characters)')
      end
    end
  end
end
