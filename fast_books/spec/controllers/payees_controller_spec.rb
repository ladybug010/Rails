require 'spec_helper'

describe PayeesController do

  def mock_payee(stubs={})
    @mock_payee ||= mock_model(Payee, stubs)
  end

  describe "GET index" do
    it "assigns all payees as @payees" do
      Payee.stub(:find).with(:all).and_return([mock_payee])
      get :index
      assigns[:payees].should == [mock_payee]
    end
  end

  describe "GET show" do
    it "assigns the requested payee as @payee" do
      Payee.stub(:find).with("37").and_return(mock_payee)
      get :show, :id => "37"
      assigns[:payee].should equal(mock_payee)
    end
  end

  describe "GET new" do
    it "assigns a new payee as @payee" do
      Payee.stub(:new).and_return(mock_payee)
      get :new
      assigns[:payee].should equal(mock_payee)
    end
  end

  describe "GET edit" do
    it "assigns the requested payee as @payee" do
      Payee.stub(:find).with("37").and_return(mock_payee)
      get :edit, :id => "37"
      assigns[:payee].should equal(mock_payee)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created payee as @payee" do
        Payee.stub(:new).with({'these' => 'params'}).and_return(mock_payee(:save => true))
        post :create, :payee => {:these => 'params'}
        assigns[:payee].should equal(mock_payee)
      end

      it "redirects to the created payee" do
        Payee.stub(:new).and_return(mock_payee(:save => true))
        post :create, :payee => {}
        response.should redirect_to(payee_url(mock_payee))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved payee as @payee" do
        Payee.stub(:new).with({'these' => 'params'}).and_return(mock_payee(:save => false))
        post :create, :payee => {:these => 'params'}
        assigns[:payee].should equal(mock_payee)
      end

      it "re-renders the 'new' template" do
        Payee.stub(:new).and_return(mock_payee(:save => false))
        post :create, :payee => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested payee" do
        Payee.should_receive(:find).with("37").and_return(mock_payee)
        mock_payee.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :payee => {:these => 'params'}
      end

      it "assigns the requested payee as @payee" do
        Payee.stub(:find).and_return(mock_payee(:update_attributes => true))
        put :update, :id => "1"
        assigns[:payee].should equal(mock_payee)
      end

      it "redirects to the payee" do
        Payee.stub(:find).and_return(mock_payee(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(payee_url(mock_payee))
      end
    end

    describe "with invalid params" do
      it "updates the requested payee" do
        Payee.should_receive(:find).with("37").and_return(mock_payee)
        mock_payee.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :payee => {:these => 'params'}
      end

      it "assigns the payee as @payee" do
        Payee.stub(:find).and_return(mock_payee(:update_attributes => false))
        put :update, :id => "1"
        assigns[:payee].should equal(mock_payee)
      end

      it "re-renders the 'edit' template" do
        Payee.stub(:find).and_return(mock_payee(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested payee" do
      Payee.should_receive(:find).with("37").and_return(mock_payee)
      mock_payee.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the payees list" do
      Payee.stub(:find).and_return(mock_payee(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(payees_url)
    end
  end

end
