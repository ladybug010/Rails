require 'spec_helper'

describe "/payees/index.html.erb" do
  include PayeesHelper

  before(:each) do
    assigns[:payees] = [
      stub_model(Payee,
        :name => "value for name"
      ),
      stub_model(Payee,
        :name => "value for name"
      )
    ]
  end

  it "renders a list of payees" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
  end
end
