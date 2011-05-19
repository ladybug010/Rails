require 'spec_helper'

describe Deposit do
  before(:each) do
    @valid_attributes = {
      :number => "1",
      :amount => 1.0
    }
  end
  
  it "should create a valid model" do
    Deposit.create!(@valid_attributes)
  end
  
end
