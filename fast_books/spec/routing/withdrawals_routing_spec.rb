require 'spec_helper'

describe WithdrawalsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/withdrawals" }.should route_to(:controller => "withdrawals", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/withdrawals/new" }.should route_to(:controller => "withdrawals", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/withdrawals/1" }.should route_to(:controller => "withdrawals", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/withdrawals/1/edit" }.should route_to(:controller => "withdrawals", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/withdrawals" }.should route_to(:controller => "withdrawals", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/withdrawals/1" }.should route_to(:controller => "withdrawals", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/withdrawals/1" }.should route_to(:controller => "withdrawals", :action => "destroy", :id => "1") 
    end
  end
end
