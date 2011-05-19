require 'spec_helper'

describe "/entries/edit.html.erb" do
  include EntriesHelper

  before(:each) do
    assigns[:entry] = @entry = stub_model(Entry,
      :new_record? => false,
      :number => "value for number",
      :payee_id => 1,
      :category_id => 1,
      :payee_id => 1,
      :account_id => 1,
      :memo => "value for memo",
      :cleared => false
    )
  end

  it "renders the edit entry form" do
    render

    response.should have_tag("form[action=#{entry_path(@entry)}][method=post]") do
      with_tag('input#entry_number[name=?]', "entry[number]")
      with_tag('input#entry_payee_id[name=?]', "entry[payee_id]")
      with_tag('input#entry_category_id[name=?]', "entry[category_id]")
      with_tag('input#entry_payee_id[name=?]', "entry[payee_id]")
      with_tag('input#entry_account_id[name=?]', "entry[account_id]")
      with_tag('input#entry_memo[name=?]', "entry[memo]")
      with_tag('input#entry_cleared[name=?]', "entry[cleared]")
    end
  end
end
