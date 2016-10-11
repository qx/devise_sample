require 'rails_helper'

RSpec.describe "member/comments/new", type: :view do
  before(:each) do
    assign(:member_comment, Member::Comment.new(
      :title => "MyString"
    ))
  end

  it "renders new member_comment form" do
    render

    assert_select "form[action=?][method=?]", member_comments_path, "post" do

      assert_select "input#member_comment_title[name=?]", "member_comment[title]"
    end
  end
end
