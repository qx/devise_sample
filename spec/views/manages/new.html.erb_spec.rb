require 'rails_helper'

RSpec.describe "manages/new", type: :view do
  before(:each) do
    assign(:manage, Manage.new(
      :name => "MyString"
    ))
  end

  it "renders new manage form" do
    render

    assert_select "form[action=?][method=?]", manages_path, "post" do

      assert_select "input#manage_name[name=?]", "manage[name]"
    end
  end
end
