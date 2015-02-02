require 'rails_helper'

RSpec.describe "pastes/index", :type => :view do
  before(:each) do
    assign(:pastes, [
      Paste.create!(
        :body => "MyText",
        :title => "Title"
      ),
      Paste.create!(
        :body => "MyText",
        :title => "Title"
      )
    ])
  end

  it "renders a list of pastes" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
