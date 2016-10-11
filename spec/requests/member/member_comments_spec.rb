require 'rails_helper'

RSpec.describe "Member::Comments", type: :request do
  describe "GET /member_comments" do
    it "works! (now write some real specs)" do
      get member_comments_path
      expect(response).to have_http_status(200)
    end
  end
end
