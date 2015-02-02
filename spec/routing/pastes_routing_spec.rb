require "rails_helper"

RSpec.describe PastesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pastes").to route_to("pastes#index")
    end

    it "routes to #new" do
      expect(:get => "/pastes/new").to route_to("pastes#new")
    end

    it "routes to #show" do
      expect(:get => "/pastes/1").to route_to("pastes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pastes/1/edit").to route_to("pastes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pastes").to route_to("pastes#create")
    end

    it "routes to #update" do
      expect(:put => "/pastes/1").to route_to("pastes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pastes/1").to route_to("pastes#destroy", :id => "1")
    end

  end
end
