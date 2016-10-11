require 'rails_helper'

RSpec.describe "Member::Videos", type: :request do
  describe "GET /member_videos" do
    it "works! (now write some real specs)" do
      get member_videos_path
      expect(response).to have_http_status(200)
    end
  end
end
