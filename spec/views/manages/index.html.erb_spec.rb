require 'rails_helper'

RSpec.describe "manages/index", type: :view do
  before(:each) do
    assign(:manages, [
      Manage.create!(
        :name => "Name"
      ),
      Manage.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of manages" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
