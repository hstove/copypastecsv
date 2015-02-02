require 'rails_helper'

RSpec.describe "pastes/new", :type => :view do
  before(:each) do
    assign(:paste, Paste.new(
      :body => "MyText",
      :title => "MyString"
    ))
  end

  it "renders new paste form" do
    render

    assert_select "form[action=?][method=?]", pastes_path, "post" do

      assert_select "textarea#paste_body[name=?]", "paste[body]"

      assert_select "input#paste_title[name=?]", "paste[title]"
    end
  end
end
