require 'spec_helper'

describe "/payees/show.html.erb" do
  include PayeesHelper
  before(:each) do
    assigns[:payee] = @payee = stub_model(Payee,
      :name => "value for name"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
  end
end
