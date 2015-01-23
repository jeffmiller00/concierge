require 'rails_helper'

RSpec.describe "service_providers/show", :type => :view do
  before(:each) do
    @service_provider = assign(:service_provider, ServiceProvider.create!(
      :name => "Name",
      :email => "Email",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(//)
  end
end
