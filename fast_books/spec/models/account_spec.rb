require 'spec_helper'

describe Account do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :number => "value for number",
      :balance => 1.5
    }
    Account.create!(@valid_attributes)
  end

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_presence_of(:number) }
  it { should validate_numericality_of(:balance) }
  it { should have_many(:entries) }
  
end
