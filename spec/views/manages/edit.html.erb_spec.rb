require 'rails_helper'

RSpec.describe "manages/edit", type: :view do
  before(:each) do
    @manage = assign(:manage, Manage.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit manage form" do
    render

    assert_select "form[action=?][method=?]", manage_path(@manage), "post" do

      assert_select "input#manage_name[name=?]", "manage[name]"
    end
  end
end
