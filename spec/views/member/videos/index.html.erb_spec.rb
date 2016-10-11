require 'rails_helper'

RSpec.describe "member/videos/index", type: :view do
  before(:each) do
    assign(:member_videos, [
      Member::Video.create!(
        :comment => nil,
        :name => "Name"
      ),
      Member::Video.create!(
        :comment => nil,
        :name => "Name"
      )
    ])
  end

  it "renders a list of member/videos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
