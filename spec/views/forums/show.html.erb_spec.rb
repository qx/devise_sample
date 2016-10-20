require 'rails_helper'

RSpec.describe "forums/show", type: :view do
  before(:each) do
    @forum = assign(:forum, Forum.create!(
      :title => "",
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Content/)
  end
end
