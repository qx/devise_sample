require "rails_helper"

RSpec.describe Member::CommentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/member/comments").to route_to("member/comments#index")
    end

    it "routes to #new" do
      expect(:get => "/member/comments/new").to route_to("member/comments#new")
    end

    it "routes to #show" do
      expect(:get => "/member/comments/1").to route_to("member/comments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/member/comments/1/edit").to route_to("member/comments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/member/comments").to route_to("member/comments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/member/comments/1").to route_to("member/comments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/member/comments/1").to route_to("member/comments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/member/comments/1").to route_to("member/comments#destroy", :id => "1")
    end

  end
end
