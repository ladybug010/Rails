require 'spec_helper'

describe "/entries/index.html.erb" do
  include EntriesHelper

  before(:each) do
    assigns[:entries] = [
      stub_model(Entry,
        :number => "value for number",
        :payee_id => 1,
        :category_id => 1,
        :payee_id => 1,
        :account_id => 1,
        :memo => "value for memo",
        :cleared => false
      ),
      stub_model(Entry,
        :number => "value for number",
        :payee_id => 1,
        :category_id => 1,
        :payee_id => 1,
        :account_id => 1,
        :memo => "value for memo",
        :cleared => false
      )
    ]
  end

  it "renders a list of entries" do
    render
    response.should have_tag("tr>td", "value for number".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for memo".to_s, 2)
    response.should have_tag("tr>td", false.to_s, 2)
  end
end
