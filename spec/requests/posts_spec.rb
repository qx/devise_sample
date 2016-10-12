require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /posts" do
    it "works! (now write some real specs)" do
      get posts_path,{'X-User-Email'=> '44708869@qq.com','X-User-Token' => 'sMJy8jRsgBmA-jy4aZ1J'}
      expect(response).to have_http_status(200)
    end
  end
end
