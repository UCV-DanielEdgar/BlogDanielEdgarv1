require "spec_helper"

describe HighScoresController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/high_scores" }.should route_to(:controller => "high_scores", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/high_scores/new" }.should route_to(:controller => "high_scores", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/high_scores/1" }.should route_to(:controller => "high_scores", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/high_scores/1/edit" }.should route_to(:controller => "high_scores", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/high_scores" }.should route_to(:controller => "high_scores", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/high_scores/1" }.should route_to(:controller => "high_scores", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/high_scores/1" }.should route_to(:controller => "high_scores", :action => "destroy", :id => "1")
    end

  end
end
