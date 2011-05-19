require 'spec_helper'

describe "/payees/edit.html.erb" do
  include PayeesHelper

  before(:each) do
    assigns[:payee] = @payee = stub_model(Payee,
      :new_record? => false,
      :name => "value for name"
    )
  end

  it "renders the edit payee form" do
    render

    response.should have_tag("form[action=#{payee_path(@payee)}][method=post]") do
      with_tag('input#payee_name[name=?]', "payee[name]")
    end
  end
end
