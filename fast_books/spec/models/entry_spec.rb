require 'spec_helper'

describe Entry do
  before(:each) do
    @valid_attributes = {
      :number => "value for number",
      :payee_id => 1,
      :category_id => 1,
      :payee_id => 1,
      :account_id => 1,
      :memo => "value for memo",
      :cleared => false,
      :amount => 1.0
    }
  end

  it "should create a new instance given valid attributes" do
    Entry.create!(@valid_attributes)
  end
  
  it { should belong_to(:account) }
  it { should belong_to(:payee) }
  it { should belong_to(:category) }
  it { should validate_presence_of(:number) }
  it { should validate_numericality_of(:amount) }
end
