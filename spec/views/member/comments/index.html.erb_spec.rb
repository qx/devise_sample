require 'rails_helper'

RSpec.describe "member/comments/index", type: :view do
  before(:each) do
    assign(:member_comments, [
      Member::Comment.create!(
        :title => "Title"
      ),
      Member::Comment.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of member/comments" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
