require 'rails_helper'

RSpec.describe "forums/index", type: :view do
  before(:each) do
    assign(:forums, [
      Forum.create!(
        :title => "",
        :content => "Content"
      ),
      Forum.create!(
        :title => "",
        :content => "Content"
      )
    ])
  end

  it "renders a list of forums" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
