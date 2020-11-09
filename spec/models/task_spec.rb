require 'rails_helper'

RSpec.describe Task, type: :model do
  before do
    @task = FactoryBot.build(:task)
  end

  describe 'タスクの登録' do
    context 'タスクの登録がうまくいく時' do
      it 'タスクの入力項目が存在すれば登録できる' do
        expect(@task).to be_valid
      end
      it 'タスク内容(content)が存在すれば登録できる' do
        @task.description = ''
        @task.image = nil
        expect(@task).to be_valid
      end
    end
    context 'タスクの登録がうまくいかない時' do
      it 'タスク内容(content)が空だと登録できない' do
        @task.content = ''
        @task.valid?
        expect(@task.errors.full_messages).to include("Content can't be blank")
      end
      it 'タスク内容(content)が50文字を超えると登録できない' do
        @task.content = 'a' * 51
        @task.valid?
        expect(@task.errors.full_messages).to include('Content is too long (maximum is 50 characters)')
      end
      it 'タスク詳細(description)が500文字を超えると登録できない' do
        @task.description = 'a' * 501
        @task.valid?
        expect(@task.errors.full_messages).to include('Description is too long (maximum is 500 characters)')
      end
    end
  end
end
