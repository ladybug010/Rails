require 'spec_helper'

describe "/withdrawals/index.html.erb" do
  include WithdrawalsHelper

  before(:each) do
    assigns[:withdrawals] = [
      stub_model(Withdrawal),
      stub_model(Withdrawal)
    ]
  end

  it "renders a list of withdrawals" do
    render
  end
end
