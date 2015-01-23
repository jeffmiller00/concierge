require 'rails_helper'

RSpec.describe "service_providers/index", :type => :view do
  before(:each) do
    assign(:service_providers, [
      ServiceProvider.create!(
        :name => "Name",
        :email => "Email",
        :user => nil
      ),
      ServiceProvider.create!(
        :name => "Name",
        :email => "Email",
        :user => nil
      )
    ])
  end

  it "renders a list of service_providers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
