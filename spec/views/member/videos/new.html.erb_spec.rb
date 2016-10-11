require 'rails_helper'

RSpec.describe "member/videos/new", type: :view do
  before(:each) do
    assign(:member_video, Member::Video.new(
      :comment => nil,
      :name => "MyString"
    ))
  end

  it "renders new member_video form" do
    render

    assert_select "form[action=?][method=?]", member_videos_path, "post" do

      assert_select "input#member_video_comment_id[name=?]", "member_video[comment_id]"

      assert_select "input#member_video_name[name=?]", "member_video[name]"
    end
  end
end
