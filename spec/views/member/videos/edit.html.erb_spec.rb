require 'rails_helper'

RSpec.describe "member/videos/edit", type: :view do
  before(:each) do
    @member_video = assign(:member_video, Member::Video.create!(
      :comment => nil,
      :name => "MyString"
    ))
  end

  it "renders the edit member_video form" do
    render

    assert_select "form[action=?][method=?]", member_video_path(@member_video), "post" do

      assert_select "input#member_video_comment_id[name=?]", "member_video[comment_id]"

      assert_select "input#member_video_name[name=?]", "member_video[name]"
    end
  end
end
