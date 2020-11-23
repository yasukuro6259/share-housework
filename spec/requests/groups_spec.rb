require 'rails_helper'

RSpec.describe "groups_controller", type: :request do
  before do
    user = FactoryBot.build(:user)
    sign_in user
  end

  describe "GET #index" do
    it "indexアクションにリクエストすると正常にレスポンスが返ってくる" do
      get root_path
      expect(response.status).to eq 200
    end
    it "indexアクションにリクエストすると投稿済みのリストが存在する" do
      @group = FactoryBot.build(:group)
      get groups_path
      expect(response.body).to include @group.content
    end
  end
end
