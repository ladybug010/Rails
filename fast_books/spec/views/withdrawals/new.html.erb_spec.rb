require 'spec_helper'

describe "/withdrawals/new.html.erb" do
  include WithdrawalsHelper

  before(:each) do
    assigns[:withdrawal] = stub_model(Withdrawal,
      :new_record? => true
    )
  end

  it "renders new withdrawal form" do
    render

    response.should have_tag("form[action=?][method=post]", withdrawals_path) do
    end
  end
end
