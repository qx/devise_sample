require 'rails_helper'

RSpec.describe "member/comments/edit", type: :view do
  before(:each) do
    @member_comment = assign(:member_comment, Member::Comment.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit member_comment form" do
    render

    assert_select "form[action=?][method=?]", member_comment_path(@member_comment), "post" do

      assert_select "input#member_comment_title[name=?]", "member_comment[title]"
    end
  end
end
