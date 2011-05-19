require 'spec_helper'

describe "/deposits/index.html.erb" do
  include DepositsHelper

  before(:each) do
    assigns[:deposits] = [
      stub_model(Deposit),
      stub_model(Deposit)
    ]
  end

  it "renders a list of deposits" do
    render
  end
end
