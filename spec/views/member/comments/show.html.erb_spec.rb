require 'rails_helper'

RSpec.describe "member/comments/show", type: :view do
  before(:each) do
    @member_comment = assign(:member_comment, Member::Comment.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
