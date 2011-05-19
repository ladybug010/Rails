require 'spec_helper'

describe "/accounts/show.html.erb" do
  include AccountsHelper
  before(:each) do
    assigns[:account] = @account = stub_model(Account,
      :name => "value for name",
      :number => "value for number",
      :balance => 1.5
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ number/)
    response.should have_text(/1\.5/)
  end
end
