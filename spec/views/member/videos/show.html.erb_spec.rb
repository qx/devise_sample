require 'rails_helper'

RSpec.describe "member/videos/show", type: :view do
  before(:each) do
    @member_video = assign(:member_video, Member::Video.create!(
      :comment => nil,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
  end
end
