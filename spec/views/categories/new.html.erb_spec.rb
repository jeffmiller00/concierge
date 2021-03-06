require 'rails_helper'

RSpec.describe "categories/new", :type => :view do
  before(:each) do
    assign(:category, Category.new(
      :name => "MyString",
      :default_order => 1,
      :property => nil
    ))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input#category_name[name=?]", "category[name]"

      assert_select "input#category_default_order[name=?]", "category[default_order]"

      assert_select "input#category_property_id[name=?]", "category[property_id]"
    end
  end
end
