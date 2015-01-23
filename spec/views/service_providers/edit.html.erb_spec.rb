require 'rails_helper'

RSpec.describe "service_providers/edit", :type => :view do
  before(:each) do
    @service_provider = assign(:service_provider, ServiceProvider.create!(
      :name => "MyString",
      :email => "MyString",
      :user => nil
    ))
  end

  it "renders the edit service_provider form" do
    render

    assert_select "form[action=?][method=?]", service_provider_path(@service_provider), "post" do

      assert_select "input#service_provider_name[name=?]", "service_provider[name]"

      assert_select "input#service_provider_email[name=?]", "service_provider[email]"

      assert_select "input#service_provider_user_id[name=?]", "service_provider[user_id]"
    end
  end
end
