require 'rails_helper'

RSpec.describe "ServiceProviders", :type => :request do
  describe "GET /service_providers" do
    it "works! (now write some real specs)" do
      get service_providers_path
      expect(response).to have_http_status(200)
    end
  end
end
