require 'spec_helper'

describe "/withdrawals/edit.html.erb" do
  include WithdrawalsHelper

  before(:each) do
    assigns[:withdrawal] = @withdrawal = stub_model(Withdrawal,
      :new_record? => false
    )
  end

  it "renders the edit withdrawal form" do
    render

    response.should have_tag("form[action=#{withdrawal_path(@withdrawal)}][method=post]") do
    end
  end
end
