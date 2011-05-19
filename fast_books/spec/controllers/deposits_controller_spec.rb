require 'spec_helper'

describe DepositsController do

  def mock_deposit(stubs={})
    @mock_deposit ||= mock_model(Deposit, stubs)
  end

  describe "GET index" do
    it "assigns all deposits as @deposits" do
      Deposit.stub(:find).with(:all).and_return([mock_deposit])
      get :index
      assigns[:deposits].should == [mock_deposit]
    end
  end

  describe "GET show" do
    it "assigns the requested deposit as @deposit" do
      Deposit.stub(:find).with("37").and_return(mock_deposit)
      get :show, :id => "37"
      assigns[:deposit].should equal(mock_deposit)
    end
  end

  describe "GET new" do
    it "assigns a new deposit as @deposit" do
      Deposit.stub(:new).and_return(mock_deposit)
      get :new
      assigns[:deposit].should equal(mock_deposit)
    end
  end

  describe "GET edit" do
    it "assigns the requested deposit as @deposit" do
      Deposit.stub(:find).with("37").and_return(mock_deposit)
      get :edit, :id => "37"
      assigns[:deposit].should equal(mock_deposit)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created deposit as @deposit" do
        Account.stub(:find).with('1').and_return(Account.new)
        Deposit.stub(:new).with({'these' => 'params'}).and_return(mock_deposit(:save => true))
        post :create, :deposit => {:these => 'params'}, :account_id =>'1'
        assigns[:deposit].should equal(mock_deposit)
      end

      it "redirects to the created deposit" do
        Deposit.stub(:new).and_return(mock_deposit(:save => true))
        post :create, :deposit => {}
        response.should redirect_to(deposit_url(mock_deposit))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved deposit as @deposit" do
        Deposit.stub(:new).with({'these' => 'params'}).and_return(mock_deposit(:save => false))
        post :create, :deposit => {:these => 'params'}
        assigns[:deposit].should equal(mock_deposit)
      end

      it "re-renders the 'new' template" do
        Account.stub(:find).with('1').and_return(Account.new)
        Deposit.stub(:new).and_return(mock_deposit(:save => false))
        post :create, :deposit => {}, :account_id => '1'
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested deposit" do
        Deposit.should_receive(:find).with("37").and_return(mock_deposit)
        mock_deposit.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :deposit => {:these => 'params'}
      end

      it "assigns the requested deposit as @deposit" do
        Deposit.stub(:find).and_return(mock_deposit(:update_attributes => true))
        put :update, :id => "1"
        assigns[:deposit].should equal(mock_deposit)
      end

      it "redirects to the deposit" do
        Deposit.stub(:find).and_return(mock_deposit(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(deposit_url(mock_deposit))
      end
    end

    describe "with invalid params" do
      it "updates the requested deposit" do
        Deposit.should_receive(:find).with("37").and_return(mock_deposit)
        mock_deposit.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :deposit => {:these => 'params'}
      end

      it "assigns the deposit as @deposit" do
        Deposit.stub(:find).and_return(mock_deposit(:update_attributes => false))
        put :update, :id => "1"
        assigns[:deposit].should equal(mock_deposit)
      end

      it "re-renders the 'edit' template" do
        Deposit.stub(:find).and_return(mock_deposit(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested deposit" do
      Deposit.should_receive(:find).with("37").and_return(mock_deposit)
      mock_deposit.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the deposits list" do
      Deposit.stub(:find).and_return(mock_deposit(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(deposits_url)
    end
  end

end
