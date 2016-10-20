require 'rails_helper'

RSpec.describe "manages/show", type: :view do
  before(:each) do
    @manage = assign(:manage, Manage.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
