require 'spec_helper'

describe "/accounts/index.html.erb" do
  include AccountsHelper

  before(:each) do
    assigns[:accounts] = [
      stub_model(Account,
        :name => "value for name",
        :number => "value for number",
        :balance => 1.5
      ),
      stub_model(Account,
        :name => "value for name",
        :number => "value for number",
        :balance => 1.5
      )
    ]
  end

  it "renders a list of accounts" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for number".to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
  end
end
