require 'spec_helper'

describe "/deposits/edit.html.erb" do
  include DepositsHelper

  before(:each) do
    assigns[:deposit] = @deposit = stub_model(Deposit,
      :new_record? => false
    )
  end

  it "renders the edit deposit form" do
    render

    response.should have_tag("form[action=#{deposit_path(@deposit)}][method=post]") do
    end
  end
end
