require "rails_helper"

RSpec.describe ManagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/manages").to route_to("manages#index")
    end

    it "routes to #new" do
      expect(:get => "/manages/new").to route_to("manages#new")
    end

    it "routes to #show" do
      expect(:get => "/manages/1").to route_to("manages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/manages/1/edit").to route_to("manages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/manages").to route_to("manages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/manages/1").to route_to("manages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/manages/1").to route_to("manages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/manages/1").to route_to("manages#destroy", :id => "1")
    end

  end
end
