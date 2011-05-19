require 'spec_helper'

describe WithdrawalsController do

  def mock_withdrawal(stubs={})
    @mock_withdrawal ||= mock_model(Withdrawal, stubs)
  end

  describe "GET index" do
    it "assigns all withdrawals as @withdrawals" do
      Withdrawal.stub(:find).with(:all).and_return([mock_withdrawal])
      get :index
      assigns[:withdrawals].should == [mock_withdrawal]
    end
  end

  describe "GET show" do
    it "assigns the requested withdrawal as @withdrawal" do
      Withdrawal.stub(:find).with("37").and_return(mock_withdrawal)
      get :show, :id => "37"
      assigns[:withdrawal].should equal(mock_withdrawal)
    end
  end

  describe "GET new" do
    it "assigns a new withdrawal as @withdrawal" do
      Withdrawal.stub(:new).and_return(mock_withdrawal)
      get :new
      assigns[:withdrawal].should equal(mock_withdrawal)
    end
  end

  describe "GET edit" do
    it "assigns the requested withdrawal as @withdrawal" do
      Withdrawal.stub(:find).with("37").and_return(mock_withdrawal)
      get :edit, :id => "37"
      assigns[:withdrawal].should equal(mock_withdrawal)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created withdrawal as @withdrawal" do
        Withdrawal.stub(:new).with({'these' => 'params'}).and_return(mock_withdrawal(:save => true))
        post :create, :withdrawal => {:these => 'params'}
        assigns[:withdrawal].should equal(mock_withdrawal)
      end

      it "redirects to the created withdrawal" do
        Withdrawal.stub(:new).and_return(mock_withdrawal(:save => true))
        post :create, :withdrawal => {}
        response.should redirect_to(withdrawal_url(mock_withdrawal))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved withdrawal as @withdrawal" do
        Withdrawal.stub(:new).with({'these' => 'params'}).and_return(mock_withdrawal(:save => false))
        post :create, :withdrawal => {:these => 'params'}
        assigns[:withdrawal].should equal(mock_withdrawal)
      end

      it "re-renders the 'new' template" do
        Withdrawal.stub(:new).and_return(mock_withdrawal(:save => false))
        post :create, :withdrawal => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested withdrawal" do
        Withdrawal.should_receive(:find).with("37").and_return(mock_withdrawal)
        mock_withdrawal.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :withdrawal => {:these => 'params'}
      end

      it "assigns the requested withdrawal as @withdrawal" do
        Withdrawal.stub(:find).and_return(mock_withdrawal(:update_attributes => true))
        put :update, :id => "1"
        assigns[:withdrawal].should equal(mock_withdrawal)
      end

      it "redirects to the withdrawal" do
        Withdrawal.stub(:find).and_return(mock_withdrawal(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(withdrawal_url(mock_withdrawal))
      end
    end

    describe "with invalid params" do
      it "updates the requested withdrawal" do
        Withdrawal.should_receive(:find).with("37").and_return(mock_withdrawal)
        mock_withdrawal.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :withdrawal => {:these => 'params'}
      end

      it "assigns the withdrawal as @withdrawal" do
        Withdrawal.stub(:find).and_return(mock_withdrawal(:update_attributes => false))
        put :update, :id => "1"
        assigns[:withdrawal].should equal(mock_withdrawal)
      end

      it "re-renders the 'edit' template" do
        Withdrawal.stub(:find).and_return(mock_withdrawal(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested withdrawal" do
      Withdrawal.should_receive(:find).with("37").and_return(mock_withdrawal)
      mock_withdrawal.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the withdrawals list" do
      Withdrawal.stub(:find).and_return(mock_withdrawal(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(withdrawals_url)
    end
  end

end
