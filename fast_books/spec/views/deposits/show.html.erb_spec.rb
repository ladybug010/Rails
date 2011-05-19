require 'spec_helper'

describe "/deposits/show.html.erb" do
  include DepositsHelper
  before(:each) do
    assigns[:deposit] = @deposit = stub_model(Deposit)
  end

  it "renders attributes in <p>" do
    render
  end
end
