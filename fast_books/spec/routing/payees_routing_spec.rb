require 'spec_helper'

describe PayeesController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/payees" }.should route_to(:controller => "payees", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/payees/new" }.should route_to(:controller => "payees", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/payees/1" }.should route_to(:controller => "payees", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/payees/1/edit" }.should route_to(:controller => "payees", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/payees" }.should route_to(:controller => "payees", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/payees/1" }.should route_to(:controller => "payees", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/payees/1" }.should route_to(:controller => "payees", :action => "destroy", :id => "1") 
    end
  end
end
