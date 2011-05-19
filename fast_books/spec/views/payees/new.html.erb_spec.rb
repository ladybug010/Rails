require 'spec_helper'

describe "/payees/new.html.erb" do
  include PayeesHelper

  before(:each) do
    assigns[:payee] = stub_model(Payee,
      :new_record? => true,
      :name => "value for name"
    )
  end

  it "renders new payee form" do
    render

    response.should have_tag("form[action=?][method=post]", payees_path) do
      with_tag("input#payee_name[name=?]", "payee[name]")
    end
  end
end
