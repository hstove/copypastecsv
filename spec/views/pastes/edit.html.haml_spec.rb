require 'rails_helper'

RSpec.describe "pastes/edit", :type => :view do
  before(:each) do
    @paste = assign(:paste, Paste.create!(
      :body => "MyText",
      :title => "MyString"
    ))
  end

  it "renders the edit paste form" do
    render

    assert_select "form[action=?][method=?]", paste_path(@paste), "post" do

      assert_select "textarea#paste_body[name=?]", "paste[body]"

      assert_select "input#paste_title[name=?]", "paste[title]"
    end
  end
end
