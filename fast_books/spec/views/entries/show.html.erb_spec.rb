require 'spec_helper'

describe "/entries/show.html.erb" do
  include EntriesHelper
  before(:each) do
    assigns[:entry] = @entry = stub_model(Entry,
      :number => "value for number",
      :payee_id => 1,
      :category_id => 1,
      :payee_id => 1,
      :account_id => 1,
      :memo => "value for memo",
      :cleared => false
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ number/)
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/value\ for\ memo/)
    response.should have_text(/false/)
  end
end
