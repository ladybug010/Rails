require 'spec_helper'

describe "/withdrawals/show.html.erb" do
  include WithdrawalsHelper
  before(:each) do
    assigns[:withdrawal] = @withdrawal = stub_model(Withdrawal)
  end

  it "renders attributes in <p>" do
    render
  end
end
