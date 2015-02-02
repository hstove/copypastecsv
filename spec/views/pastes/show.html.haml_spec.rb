require 'rails_helper'

RSpec.describe "pastes/show", :type => :view do
  before(:each) do
    @paste = assign(:paste, Paste.create!(
      :body => "MyText",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Title/)
  end
end
