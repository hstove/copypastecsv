require 'rails_helper'

RSpec.describe "Pastes", :type => :request do
  describe "GET /pastes" do
    it "works! (now write some real specs)" do
      get pastes_path
      expect(response).to have_http_status(200)
    end
  end
end
