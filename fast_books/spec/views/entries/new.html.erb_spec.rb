require 'spec_helper'

describe "/entries/new.html.erb" do
  include EntriesHelper

  before(:each) do
    assigns[:entry] = stub_model(Entry,
      :new_record? => true,
      :number => "value for number",
      :payee_id => 1,
      :category_id => 1,
      :payee_id => 1,
      :account_id => 1,
      :memo => "value for memo",
      :cleared => false
    )
  end

  it "renders new entry form" do
    render

    response.should have_tag("form[action=?][method=post]", entries_path) do
      with_tag("input#entry_number[name=?]", "entry[number]")
      with_tag("input#entry_payee_id[name=?]", "entry[payee_id]")
      with_tag("input#entry_category_id[name=?]", "entry[category_id]")
      with_tag("input#entry_payee_id[name=?]", "entry[payee_id]")
      with_tag("input#entry_account_id[name=?]", "entry[account_id]")
      with_tag("input#entry_memo[name=?]", "entry[memo]")
      with_tag("input#entry_cleared[name=?]", "entry[cleared]")
    end
  end
end
