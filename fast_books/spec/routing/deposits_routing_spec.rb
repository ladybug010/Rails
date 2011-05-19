require 'spec_helper'

describe DepositsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/deposits" }.should route_to(:controller => "deposits", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/deposits/new" }.should route_to(:controller => "deposits", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/deposits/1" }.should route_to(:controller => "deposits", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/deposits/1/edit" }.should route_to(:controller => "deposits", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/deposits" }.should route_to(:controller => "deposits", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/deposits/1" }.should route_to(:controller => "deposits", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/deposits/1" }.should route_to(:controller => "deposits", :action => "destroy", :id => "1") 
    end
  end
end
