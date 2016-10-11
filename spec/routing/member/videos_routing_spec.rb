require "rails_helper"

RSpec.describe Member::VideosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/member/videos").to route_to("member/videos#index")
    end

    it "routes to #new" do
      expect(:get => "/member/videos/new").to route_to("member/videos#new")
    end

    it "routes to #show" do
      expect(:get => "/member/videos/1").to route_to("member/videos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/member/videos/1/edit").to route_to("member/videos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/member/videos").to route_to("member/videos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/member/videos/1").to route_to("member/videos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/member/videos/1").to route_to("member/videos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/member/videos/1").to route_to("member/videos#destroy", :id => "1")
    end

  end
end
