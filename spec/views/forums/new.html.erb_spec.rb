require 'rails_helper'

RSpec.describe "forums/new", type: :view do
  before(:each) do
    assign(:forum, Forum.new(
      :title => "",
      :content => "MyString"
    ))
  end

  it "renders new forum form" do
    render

    assert_select "form[action=?][method=?]", forums_path, "post" do

      assert_select "input#forum_title[name=?]", "forum[title]"

      assert_select "input#forum_content[name=?]", "forum[content]"
    end
  end
end
